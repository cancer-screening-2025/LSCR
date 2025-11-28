# Forecasting Cancer Screening Behavior from Longitudinal Data with Embedding-Augmented Deep Learning

**FCSB**: Comprehensive ablation study on temporal neural network architectures for cancer screening behavior prediction.

## Overview

This repository contains a systematic ablation study examining the impact of architectural components on neural network performance for predicting cancer screening behavior using longitudinal data spanning 2008-2018.

### Key Findings

- **Best Model**: BiLSTM + ID + Static achieves 97.6% sensitivity (F1=0.937)
- **Balanced Alternative**: GRU + Attention achieves F1=0.939 with better specificity (67.9%)
- **Architecture Impact**: BiLSTM outperforms unidirectional variants by 4-5% F1-score
- **Embedding Importance**: ID embeddings improve F1-score by 1.2% over static embeddings alone
- **Attention Effects**: Attention helps GRU (+10.6% F1) but hurts BiLSTM (-4.2% F1)

## Dataset

- **Timeframe**: 2008-2018 (6 observations per subject, 2-year intervals)
- **Participants**: 1,720 unique female participants
- **Total Observations**: 3,720 person-year records
- **Screening Types**: Mammography and Pap Smear
- **Features**: 119 total variables including demographic, health, and socioeconomic factors

### Data Access & Preparation for Training

**Source**: National Longitudinal Survey of Youth (NLSY) - public-use dataset

**Getting the Data**:

1. **Download NLSY Data**:
   - Visit [NLSY Bureau of Labor Statistics](https://www.bls.gov/nls/)
   - Select **NLSY79** cohort (the original 1979 cohort of young Americans)
   - Download variables for: demographics, employment, health behaviors, healthcare access
   - Time period: 2008-2018 biennial surveys

2. **Key Variables to Extract**:
   - **Demographic**: Age, race, education level, mother's education, family structure
   - **Screening Outcomes**: Mammography screening (yes/no), Pap smear screening (yes/no)
   - **Health**: Self-reported health status, BMI, insurance coverage, healthcare utilization
   - **Socioeconomic**: Income, employment status, region, urban/rural status
   - **Lifestyle**: Physical activity, smoking status, alcohol consumption

3. **Preprocessing Steps** (included in `cancer_paper_dataset.ipynb`):
   ```python
   # Load raw NLSY data
   df = pd.read_csv('data/raw/nlsy_raw.csv')
   
   # Filter to female participants only (age 40-60 in 2008)
   df_female = df[df['sex'] == 'Female'].copy()
   
   # Select screening survey years (2008, 2010, 2012, 2014, 2016, 2018)
   screening_years = [2008, 2010, 2012, 2014, 2016, 2018]
   df_filtered = df_female[df_female['survey_year'].isin(screening_years)]
   
   # Handle missing values
   # - Categorical: fill with mode or create 'Unknown' category
   # - Continuous: impute using forward/backward fill or median
   df_processed = df_filtered.fillna(method='bfill').fillna(method='ffill')
   
   # Encode categorical variables
   categorical_vars = ['race', 'education', 'insurance_type', 'region']
   df_encoded = pd.get_dummies(df_processed, columns=categorical_vars, drop_first=True)
   
   # Normalize continuous variables (0-1 scaling)
   from sklearn.preprocessing import MinMaxScaler
   scaler = MinMaxScaler()
   continuous_vars = ['age', 'bmi', 'income']
   df_encoded[continuous_vars] = scaler.fit_transform(df_encoded[continuous_vars])
   
   # Create long-format panel for sequential modeling
   df_long = df_encoded.sort_values(['participant_id', 'survey_year'])
   df_long['time_index'] = df_long.groupby('participant_id').cumcount()
   ```

4. **Data Files in Repository**:
   - `data/raw/nlsy_data_females_only.csv` - Filtered to female participants
   - `data/raw/nlsy_data_long_filtered_2008_2018.csv` - Reshaped to long format
   - `data/raw/nlsy_data_long_with_time_features.csv` - Added temporal features
   - `data/raw/final_dataset.csv` - Ready for model training (1,720 subjects × 6 time points)

5. **Train/Test Split**:
   ```python
   # Random split: 80% train, 20% test (stratified by screening behavior)
   from sklearn.model_selection import train_test_split
   
   train_ids, test_ids = train_test_split(
       df_long['participant_id'].unique(),
       test_size=0.2,
       random_state=42,
       stratify=df_long.groupby('participant_id')['mammogram_2018'].first()
   )
   
   train_data = df_long[df_long['participant_id'].isin(train_ids)]
   test_data = df_long[df_long['participant_id'].isin(test_ids)]
   
   # For t+4 forecasting: use 2008-2016 as input, predict 2018 outcomes
   X_train = train_data[train_data['year'] <= 2016]
   y_train = train_data[train_data['year'] == 2018][['participant_id', 'mammogram', 'pap_smear']]
   
   X_test = test_data[test_data['year'] <= 2016]
   y_test = test_data[test_data['year'] == 2018][['participant_id', 'mammogram', 'pap_smear']]
   ```

6. **Quick Start with Included Data**:
   - The repository includes preprocessed data files in `data/raw/`
   - Run the notebook directly without manual preprocessing:
   ```bash
   jupyter notebook cancer_paper_dataset.ipynb
   # Navigate to "Load Data" section (cell ~10)
   # Data loads from final_dataset.csv (already preprocessed)
   ```

### Key Trend Findings

| Metric | 2008 | 2018 | Change |
|--------|------|------|--------|
| Mammography | 68.1% | 73.6% | +5.5 pp |
| Pap Smear | 74.6% | 58.9% | -15.7 pp |
| Divergence | - | - | **21.2 pp** |

## Models Evaluated

### Recurrent Neural Network Variants
- **GRU**: 80 hidden units (faster, fewer parameters)
- **LSTM**: 80 hidden units (enhanced long-term dependencies)
- **BiLSTM**: 40 bidirectional units (bidirectional context)
- **GRU-D**: With decay mechanism for irregular sampling

### Temporal Encoding Strategies
- **Static Embeddings**: Learnable embeddings for categorical variables
- **ID + Static**: Individual participant ID embeddings + static features
- **GRU-D**: Explicit handling of temporal irregularities

### Attention Mechanisms
- Baseline (no attention)
- Scaled dot-product attention

## Project Structure

```
FCSB/
├── ablation_study_aistat.tex          # Publication-ready LaTeX paper (AISTATS format)
├── cancer_paper_dataset.ipynb         # Main notebook with model training and evaluation
├── README.md                           # This file
├── .gitignore                          # Git ignore rules
│
├── data/
│   ├── final_dataset.csv              # Processed final dataset (1,720 subjects)
│   ├── nlsy_data_*.csv                # Preprocessed data at various stages
│   └── screening_trend_table.csv      # Screening behavior trends
│
├── results/
│   ├── tables/                        # All results tables (CSV format)
│   │   ├── clinical_metrics_all_models.csv
│   │   ├── bootstrap_confidence_intervals.csv
│   │   ├── comprehensive_model_comparison.csv
│   │   ├── embedding_ablation_study.csv
│   │   ├── temporal_pattern_analysis.csv
│   │   └── screening_trend_table.csv
│   └── figs/                          # Visualization outputs
│       ├── embedding_ablation_study.png
│       └── shap_*.png
│
└── documentation/                      # Implementation guides and documentation
    ├── HOW_TO_RUN_NOTEBOOK.md
    ├── TABLE_SPACING_IMPROVEMENTS.md
    └── IMPLEMENTATION_SUMMARY.md
```

## Clinical Performance Metrics (Top Models)

| Model | F1 | Sensitivity | Specificity | PPV | NPV |
|-------|-------|-------------|-------------|-----|-----|
| GRU + Attention | **0.9395** | 0.9627 | 0.6787 | 0.9172 | 0.8309 |
| BiLSTM + Static | 0.9385 | 0.9659 | 0.6577 | 0.9126 | 0.8391 |
| BiLSTM + ID + Static | 0.9365 | **0.9756** | 0.6006 | 0.9004 | **0.8696** |
| LSTM + Static | 0.9359 | 0.9716 | 0.6126 | 0.9027 | 0.8536 |

## Getting Started

### Requirements

```bash
python >= 3.8
tensorflow >= 2.8
numpy >= 1.19
pandas >= 1.1
scikit-learn >= 0.24
matplotlib >= 3.3
seaborn >= 0.11
jupyter >= 1.0
```

### Installation

```bash
# Clone the repository
git clone https://github.com/adetayookunoye/FCSB.git
cd FCSB

# Create virtual environment
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt
```

### Running the Analysis

```bash
# Open and run the Jupyter notebook
jupyter notebook cancer_paper_dataset.ipynb

# Or for JupyterLab
jupyter lab cancer_paper_dataset.ipynb
```

### Generating the Paper

```bash
# Compile LaTeX to PDF
pdflatex ablation_study_aistat.tex
bibtex ablation_study_aistat
pdflatex ablation_study_aistat.tex
pdflatex ablation_study_aistat.tex
```

## Key Results and Recommendations

### For High Sensitivity Applications
- **Model**: BiLSTM + ID + Static
- **Sensitivity**: 97.6% (minimizes false negatives)
- **Trade-off**: Lower specificity (60.1%), more false positives
- **Use Case**: Screening programs where missing cases is critical

### For Balanced Performance
- **Model**: GRU + Attention
- **F1-Score**: 0.9395 (best overall)
- **Sensitivity**: 96.3%, Specificity: 67.9%
- **Use Case**: Production systems requiring balanced metrics

### For Production Deployment
- **Model**: BiLSTM + Static Embeds
- **F1-Score**: 0.9385
- **Advantage**: Simpler architecture, easier interpretability
- **Trade-off**: Slightly reduced sensitivity

## Ablation Study Insights

### RNN Unit Comparison
- BiLSTM: Average F1 = 0.924 (best)
- LSTM: Average F1 = 0.883
- GRU: Average F1 = 0.865
- GRU-D: Average F1 = 0.839
- **Finding**: Bidirectional processing adds 4-5% improvement

### Embedding Strategy Impact
- ID + Static: Average F1 = 0.877
- Static Embeds: Average F1 = 0.867
- GRU-D: Average F1 = 0.843
- **Finding**: Participant-level heterogeneity matters (1.2% improvement)

### Attention Mechanism Effects
- GRU + Attention: F1 improvement +10.6%
- LSTM + Attention: F1 degradation -9.5%
- BiLSTM + Attention: F1 degradation -4.2%
- **Finding**: Architecture-dependent effectiveness

## Data Quality

✅ All 119 variables validated  
✅ Zero negative/improperly coded values  
✅ Perfect temporal regularity (6 points at 2-year intervals)  
✅ 11.25% missing rate (handled via GRU-D and embeddings)  
✅ Consistent feature coding across all time points

## Paper Information

**Title**: Forecasting Cancer Screening Behavior from Longitudinal Data with Embedding-Augmented Deep Learning

**Status**: Prepared for AISTATS 2026 submission

**Format**: Two-column LaTeX (AISTATS format)

**Key Sections**:
- Comprehensive ablation study of 12 model architectures
- Bootstrap confidence intervals (1,000 resamples)
- Screening behavior trend analysis
- Clinical metrics and interpretation
- Computational efficiency analysis


## Repository Statistics

- **Total Files**: 91
- **Notebooks**: 2 (main + revised with fixes)
- **LaTeX Files**: 1 (publication-ready)
- **Result Tables**: 10 (CSV format)
- **Documentation**: 15+ markdown files
- **Data Files**: 20+ CSV files at various processing stages

## License

MIT License - See LICENSE file for details



## Acknowledgments

This work was supported by [funding sources and data providers]. We thank the reviewers and colleagues who provided valuable feedback during the development of this study.

---


**Status**: ✅ Initial commit complete
