# 🚀 How to Run Your Notebook and Use Reviewer Response Functions

## ✅ Current Status

Your notebook has been enhanced with reviewer response functions. All synthetic test data has been removed.

## 📋 What's in Your Notebook

### Original Cells (1-104)
Your existing data processing and model training pipeline:
1. **Setup & Imports** (Cell 1)
2. **Helper Functions** (Cell 3)
3. **Data Loading & Preprocessing** (Cells 5-37)
4. **XGBoost Baseline Models**
5. **LSTM Models**
6. **BiLSTM Models**
7. **GRU-D Models**
8. **BiLSTM + Embeddings (Best Models)**

### New Reviewer Response Functions (Cells 107-125)
Ready-to-use analysis functions:
- **Bootstrap Confidence Intervals** (Cell 107)
- **Clinical Metrics** (Cell 111)
- **Embedding Ablation** (Cell 115)
- **Temporal Analysis** (Cell 119)
- **Statistical Comparison** (Cell 123)

## 🎯 How to Use

### Step 1: Run Your Existing Notebook
Run cells 1-104 as you normally would to:
1. Load and process your data
2. Train your models
3. Generate predictions

**Important:** After running your models, you'll have these variables:
```python
# For each model you train:
y_test              # True labels
y_pred              # Binary predictions (0 or 1)
y_pred_probs        # Probability predictions (0.0 to 1.0)

# Training data (for embedding ablation):
X_train_lstm, X_train_id, X_train_race, X_train_educ, X_train_meduc, y_train
X_test_lstm, X_test_id, X_test_race, X_test_educ, X_test_meduc, y_test

# Long format data (for temporal analysis):
df_long or similar dataframe with 'id_code' and 'year' columns
```

### Step 2: Save Your Model Predictions
After training each important model, save the predictions:

```python
# After XGBoost
y_pred_xgb = y_pred.copy()
y_pred_probs_xgb = y_pred_probs.copy()

# After BiLSTM
y_pred_bilstm = y_pred.copy()
y_pred_probs_bilstm = y_pred_probs.copy()

# After GRU-D
y_pred_grud = y_pred.copy()
y_pred_probs_grud = y_pred_probs.copy()

# Save test labels (same for all)
y_test_final = y_test.copy()
```

### Step 3: Use Reviewer Response Functions

#### A. Bootstrap Confidence Intervals
```python
# For your best model (BiLSTM with embeddings)
bootstrap_results = bootstrap_metrics(y_test_final, y_pred_probs_bilstm, n_bootstrap=1000)
print_bootstrap_results(bootstrap_results, "BiLSTM with Embeddings")

# For baseline
bootstrap_results_xgb = bootstrap_metrics(y_test_final, y_pred_probs_xgb, n_bootstrap=1000)
print_bootstrap_results(bootstrap_results_xgb, "XGBoost Baseline")
```

#### B. Clinical Metrics
```python
# For BiLSTM
clinical_bilstm = compute_clinical_metrics(y_test_final, y_pred_bilstm)
print_clinical_metrics(clinical_bilstm, "BiLSTM with Embeddings")

# For XGBoost
clinical_xgb = compute_clinical_metrics(y_test_final, y_pred_xgb)
print_clinical_metrics(clinical_xgb, "XGBoost Baseline")

# Create comparison table
all_metrics = {
    'BiLSTM+Embeddings': clinical_bilstm,
    'XGBoost': clinical_xgb,
    'GRU-D': clinical_grud  # if you have it
}
comparison_df = create_clinical_metrics_table(all_metrics)
print(comparison_df)

# Save for paper
comparison_df.to_csv(RESULTS / 'clinical_metrics_comparison.csv')
```

#### C. Statistical Comparison
```python
# Compare BiLSTM vs XGBoost
print_statistical_comparison(
    y_test_final,
    y_pred_bilstm, y_pred_probs_bilstm, "BiLSTM+Embeddings",
    y_pred_xgb, y_pred_probs_xgb, "XGBoost"
)

# Compare BiLSTM vs GRU-D
print_statistical_comparison(
    y_test_final,
    y_pred_bilstm, y_pred_probs_bilstm, "BiLSTM",
    y_pred_grud, y_pred_probs_grud, "GRU-D"
)
```

#### D. Temporal Analysis
```python
# Use your long-format dataframe
# Replace 'df_long' with your actual variable name
temporal_analysis = analyze_temporal_patterns(
    df_long,  # Your long-format dataframe
    id_col='id_code',
    year_col='year'
)
print_grud_bilstm_comparison(temporal_analysis)
```

#### E. Embedding Ablation Study
```python
# Run this ONLY if you want to test different embedding dimensions
# Note: This will take 30-60 minutes as it retrains models
ablation_results = run_embedding_ablation(
    X_train_lstm, X_train_id, X_train_race, X_train_educ, X_train_meduc, y_train,
    X_test_lstm, X_test_id, X_test_race, X_test_educ, X_test_meduc, y_test,
    embedding_dims=[8, 16, 32, 64, 128],
    epochs=30,
    batch_size=32
)

print(ablation_results)
ablation_results.to_csv(RESULTS / 'embedding_ablation_study.csv', index=False)
```

## 📊 Outputs to Generate

After running the analyses above, you should have:

### Tables for Your Paper
1. `clinical_metrics_comparison.csv` - Sensitivity, Specificity, PPV, NPV
2. `embedding_ablation_study.csv` - Performance across embedding dimensions
3. Bootstrap CI results (copy from printed output)

### Information for Your Rebuttal
From the printed outputs, extract:
- Mean ± SD with 95% CI for all metrics
- P-values from statistical tests
- Temporal pattern statistics
- Clinical interpretations

## 🚦 Quick Start Guide

### If you're running from scratch:
```python
# 1. Run cells 1-3 (Setup, imports, helpers)
# 2. Run your data processing cells (up to where you have final_dataset)
# 3. Run your model training cells one by one
# 4. After EACH important model, save predictions as shown above
# 5. Once all models are trained, run the analysis functions
```

### If your models are already trained:
```python
# If you still have variables in memory:
# Just add the analysis cells at the end and run them

# If you need to reload predictions:
# You'll need to retrain or load saved model weights
```

## 💡 Tips

1. **Variable Names:** The functions work with any variable names - just pass them as arguments

2. **Target Variables:** If you have separate Pap and Mammogram models:
   ```python
   # For Pap Smear
   bootstrap_pap = bootstrap_metrics(y_test_pap, y_pred_probs_pap_bilstm)
   
   # For Mammogram
   bootstrap_mammo = bootstrap_metrics(y_test_mammo, y_pred_probs_mammo_bilstm)
   ```

3. **Speed:** Bootstrap with n=1000 takes 1-2 minutes per model. For testing, use n=100.

4. **Memory:** If you run out of memory, restart kernel and run just the essential cells.

## ❓ Troubleshooting

**Q: My variables are gone after restarting**
A: You need to re-run your model training cells, or save predictions to disk:
```python
np.save('y_pred_probs_bilstm.npy', y_pred_probs)
# Later: y_pred_probs = np.load('y_pred_probs_bilstm.npy')
```

**Q: Which dataframe is "df_long"?**
A: Look for your long-format dataframe with time-varying features. It should have:
- One column for subject IDs (like 'id_code')
- One column for years (like 'year')
- Multiple rows per subject

**Q: Do I need to run embedding ablation?**
A: It's optional but recommended. It proves your model is robust to hyperparameter choices.

**Q: The functions say "Uncomment the code..."**
A: Those are example cells showing how to use the functions. Create new cells with actual code.

## ✅ Final Checklist

Before submitting your rebuttal:
- [ ] Bootstrap CI computed for all major models
- [ ] Clinical metrics table created
- [ ] Statistical comparison tests run (BiLSTM vs XGBoost, BiLSTM vs GRU-D)
- [ ] Temporal analysis completed
- [ ] Embedding ablation study run (optional but recommended)
- [ ] All results saved to CSV files in `new_results/results/tables/`
- [ ] Numbers filled into rebuttal template
- [ ] Figures created (if any)

## 📁 Expected Output Files

```
new_results/results/tables/
├── clinical_metrics_comparison.csv
├── embedding_ablation_study.csv  (optional)
└── (copy bootstrap results from console output)
```

---

**Remember:** The functions are already defined and working. You just need to call them with your actual data after training your models!
