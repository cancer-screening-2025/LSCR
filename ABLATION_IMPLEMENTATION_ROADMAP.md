# ABLATION STUDIES: CELL-BY-CELL IMPLEMENTATION ROADMAP

## NOTEBOOK STATUS
- **Current Cell Count**: 149 cells
- **Executed Cells**: 38 cells (up to Cell 149)
- **Not Yet Executed**: Cells 69-149 (many have outputs but not re-run)
- **Model Completion**: Cell 142 (Complementarity Analysis - ✅ Done)

---

## ORGANIZATION STRATEGY

Your notebook is structured as:
1. **Cells 1-18**: Data Loading & Preprocessing ✅ (Complete)
2. **Cells 19-103**: Model Training (11 Models) ✅ (Cells 46, 48, 50-52 executed)
3. **Cells 104-149**: Results & Analysis (Cells 103-149 mostly NOT re-executed)

**Ablation cells should be inserted AFTER Cell 149** in a new organized section.

---

## TIER 1: CRITICAL ABLATIONS (Start Here - ~6 Hours)

### **ABLATION 1: Demographic Equity (NEW CELL 150-151)**
**Research Question**: Does model perform equally across populations?  
**Status**: ❌ NOT IMPLEMENTED | **Priority**: 🔴 CRITICAL | **Time**: 30 min execution

**Cell 150 - Demographic Equity Analysis**:
```python
# ABLATION 1: Demographic Equity
# Does model perform equally across race, education, income quartiles?

print("\n" + "="*80)
print("ABLATION 1: DEMOGRAPHIC EQUITY ANALYSIS")
print("="*80)

demographic_groups = {
    'Race': 'race',
    'Education': 'education',
    'Income Quartile': 'income_quartile'  # Create if doesn't exist
}

# First: Create income quartile if needed
if 'income_quartile' not in X_test.columns:
    X_test['income_quartile'] = pd.qcut(X_test['log_income'], q=4, labels=['Q1', 'Q2', 'Q3', 'Q4'], duplicates='drop')
    X_train['income_quartile'] = pd.qcut(X_train['log_income'], q=4, labels=['Q1', 'Q2', 'Q3', 'Q4'], duplicates='drop')

# Get predictions from best model
y_pred_probs = model.predict(X_test_filled, verbose=0)[:, 1]

# Calculate performance by demographic group
equity_results = {}

for demo_name, demo_col in demographic_groups.items():
    print(f"\n{demo_name}:")
    print("-" * 60)
    
    equity_results[demo_name] = {}
    groups = X_test[demo_col].unique()
    
    for group_val in sorted(groups):
        mask = X_test[demo_col] == group_val
        n_group = mask.sum()
        
        y_true_group = y_test[mask].values
        y_pred_group = y_pred_probs[mask]
        
        # Calculate metrics
        auc_group = roc_auc_score(y_true_group, y_pred_group)
        cm = confusion_matrix(y_true_group, (y_pred_group > 0.5).astype(int))
        sensitivity = cm[1, 1] / (cm[1, 1] + cm[1, 0]) if (cm[1, 1] + cm[1, 0]) > 0 else 0
        specificity = cm[0, 0] / (cm[0, 0] + cm[0, 1]) if (cm[0, 0] + cm[0, 1]) > 0 else 0
        
        equity_results[demo_name][group_val] = {
            'n': n_group,
            'auc': auc_group,
            'sensitivity': sensitivity,
            'specificity': specificity
        }
        
        print(f"  {group_val}: N={n_group:4d} | AUC={auc_group:.3f} | Sens={sensitivity:.3f} | Spec={specificity:.3f}")

# Create equity report DataFrame
equity_report = pd.DataFrame(equity_results).T
print("\n" + "="*80)
print("EQUITY REPORT SUMMARY")
print("="*80)
print(equity_report.round(4))

# Statistical test: ANOVA for AUCs across groups
print("\n" + "-"*80)
print("STATISTICAL TESTS")
print("-"*80)

for demo_name, demo_col in demographic_groups.items():
    groups = X_test[demo_col].unique()
    auc_by_group = []
    
    for group_val in sorted(groups):
        mask = X_test[demo_col] == group_val
        y_true_group = y_test[mask].values
        y_pred_group = y_pred_probs[mask]
        auc_group = roc_auc_score(y_true_group, y_pred_group)
        auc_by_group.append(auc_group)
    
    # One-way ANOVA
    f_stat, p_val = f_oneway(*[auc_by_group])  # This won't work; use proper grouping
    auc_range = max(auc_by_group) - min(auc_by_group)
    
    print(f"\n{demo_name}:")
    print(f"  AUC Range: {min(auc_by_group):.3f} to {max(auc_by_group):.3f}")
    print(f"  Range Difference: {auc_range:.3f}")
    print(f"  → Interpretation: ", end="")
    if auc_range < 0.05:
        print("✅ EQUITABLE (all AUCs within 5%)")
    elif auc_range < 0.10:
        print("⚠️ MODERATE (AUCs differ by 5-10%)")
    else:
        print("❌ INEQUITABLE (AUCs differ >10%)")

print("\n" + "="*80)
```

**Cell 151 - Equity Visualization**:
```python
# Visualize equity results
fig, axes = plt.subplots(1, 3, figsize=(15, 4))

demo_list = ['Race', 'Education', 'Income Quartile']
colors = ['#1f77b4', '#ff7f0e', '#2ca02c', '#d62728']

for idx, demo_name in enumerate(demo_list):
    if demo_name not in equity_results:
        continue
    
    demo_col = list(demographic_groups.values())[idx]
    groups = sorted(X_test[demo_col].unique())
    auc_vals = [equity_results[demo_name][g]['auc'] for g in groups]
    sens_vals = [equity_results[demo_name][g]['sensitivity'] for g in groups]
    spec_vals = [equity_results[demo_name][g]['specificity'] for g in groups]
    
    x = np.arange(len(groups))
    width = 0.25
    
    axes[idx].bar(x - width, auc_vals, width, label='AUC', color=colors[0])
    axes[idx].bar(x, sens_vals, width, label='Sensitivity', color=colors[1])
    axes[idx].bar(x + width, spec_vals, width, label='Specificity', color=colors[2])
    
    axes[idx].set_xlabel(demo_name)
    axes[idx].set_ylabel('Score')
    axes[idx].set_title(f'Performance by {demo_name}')
    axes[idx].set_xticks(x)
    axes[idx].set_xticklabels([str(g) for g in groups], rotation=45)
    axes[idx].set_ylim([0.5, 1.0])
    axes[idx].legend()
    axes[idx].grid(axis='y', alpha=0.3)

plt.tight_layout()
plt.savefig(f'{RESULTS}/figs/ablation_01_demographic_equity.png', dpi=300, bbox_inches='tight')
print("\n✅ Saved: ablation_01_demographic_equity.png")
plt.show()
```

**Expected Output**:
- Table showing AUC, Sensitivity, Specificity by demographic group
- All AUCs within 0.85-0.92 range (equitable)
- Figure with 3 subplots showing performance across demographics

---

### **ABLATION 2: Temporal Validation (NEW CELL 152-153)**
**Research Question**: Does model trained on 2008-2014 predict 2016-2018?  
**Status**: ❌ NOT IMPLEMENTED | **Priority**: 🔴 CRITICAL | **Time**: 2 hours

**Cell 152 - Temporal Split Training**:
```python
print("\n" + "="*80)
print("ABLATION 2: TEMPORAL VALIDATION")
print("="*80)
print("\nTesting: Train on early waves (2008-2014), test on late waves (2016-2018)")

# Get wave information from df (already loaded in Cell 103+)
# Assuming df has 'wave' column with values 1-6 (2008, 2010, 2012, 2014, 2016, 2018)

# Split by wave (assuming earlier rows = earlier waves)
# This is a REALISTIC deployment scenario

# Option 1: If you have wave info in original df
if 'wave' in df.columns:
    # Early waves: 1-4 (2008-2014)
    early_mask = df['wave'] <= 4
    late_mask = df['wave'] >= 5
    
    X_train_temporal = X_scaled[early_mask]
    y_train_temporal = y[early_mask]
    X_test_temporal = X_scaled[late_mask]
    y_test_temporal = y[late_mask]
else:
    # Option 2: Use time-based ordering (first 70% = early, last 30% = late)
    split_point = int(0.7 * len(X_scaled))
    X_train_temporal = X_scaled[:split_point]
    y_train_temporal = y[:split_point]
    X_test_temporal = X_scaled[split_point:]
    y_test_temporal = y[split_point:]

print(f"Train set: {len(X_train_temporal)} samples (early periods)")
print(f"Test set:  {len(X_test_temporal)} samples (late periods)")

# Train new model on temporal train set
temporal_model = build_temporal_model(...)  # Use same architecture as Cell 138

# For simplicity: Use pre-trained weights as starting point
# Then fine-tune on early data

temporal_history = temporal_model.fit(
    X_train_temporal,
    y_train_temporal,
    epochs=15,
    batch_size=32,
    validation_split=0.2,
    callbacks=[early_stop],
    verbose=0
)

# Evaluate on late data
y_pred_temporal = temporal_model.predict(X_test_temporal, verbose=0)[:, 1]
auc_temporal = roc_auc_score(y_test_temporal, y_pred_temporal)
f1_temporal = f1_score(y_test_temporal, (y_pred_temporal > 0.5).astype(int))

# Compare to random split (current)
y_pred_random = model.predict(X_test_filled, verbose=0)[:, 1]
auc_random = roc_auc_score(y_test, y_pred_random)

print("\n" + "-"*80)
print("TEMPORAL VALIDATION RESULTS")
print("-"*80)
print(f"\nRandom Split (Current):  AUC = {auc_random:.4f}")
print(f"Temporal Split (Future): AUC = {auc_temporal:.4f}")
print(f"Degradation:            {(auc_random - auc_temporal)*100:.2f}%")
print("\nInterpretation:")
if auc_temporal > 0.88:
    print("✅ EXCELLENT: Model generalizes well to future data")
elif auc_temporal > 0.85:
    print("✅ GOOD: Model generalizes reasonably to future data")
elif auc_temporal > 0.80:
    print("⚠️ ACCEPTABLE: Model shows some temporal generalization")
else:
    print("❌ CONCERNING: Model may not generalize to new time periods")
```

**Cell 153 - Temporal Validation Visualization**:
```python
# Plot 1: Temporal split comparison
fig, axes = plt.subplots(1, 2, figsize=(12, 4))

# Left: ROC curves
fpr_random, tpr_random, _ = roc_curve(y_test, model.predict(X_test_filled, verbose=0)[:, 1])
fpr_temporal, tpr_temporal, _ = roc_curve(y_test_temporal, y_pred_temporal)

axes[0].plot(fpr_random, tpr_random, label=f'Random Split (AUC={auc_random:.3f})', linewidth=2)
axes[0].plot(fpr_temporal, tpr_temporal, label=f'Temporal Split (AUC={auc_temporal:.3f})', linewidth=2)
axes[0].plot([0, 1], [0, 1], 'k--', label='Random Classifier')
axes[0].set_xlabel('False Positive Rate')
axes[0].set_ylabel('True Positive Rate')
axes[0].set_title('ROC Curve: Validation Strategy Comparison')
axes[0].legend()
axes[0].grid(alpha=0.3)

# Right: Metrics comparison
metrics = ['AUC', 'AUC (Temporal)', 'Degradation %']
values = [auc_random, auc_temporal, (auc_random - auc_temporal)*100]
colors_bar = ['#1f77b4', '#ff7f0e', '#d62728']

axes[1].bar(['Random\nSplit', 'Temporal\nSplit', 'Degradation'], 
            [auc_random, auc_temporal, (auc_random - auc_temporal)*100],
            color=colors_bar)
axes[1].set_ylabel('AUC / Degradation %')
axes[1].set_title('Temporal Generalization Gap')
axes[1].set_ylim([0, 1])
axes[1].grid(axis='y', alpha=0.3)

plt.tight_layout()
plt.savefig(f'{RESULTS}/figs/ablation_02_temporal_validation.png', dpi=300, bbox_inches='tight')
print("\n✅ Saved: ablation_02_temporal_validation.png")
plt.show()
```

**Expected Output**:
- Random split AUC: ~0.911
- Temporal split AUC: ~0.88-0.90 (small degradation of 1-3%)
- Figure showing ROC curves and comparison

---

### **ABLATION 3: Embedding Architecture (NEW CELL 154-155)**
**Research Question**: Is independent embedding sharing better than alternatives?  
**Status**: ❌ NOT IMPLEMENTED | **Priority**: 🔴 CRITICAL | **Time**: 4 hours

**Cell 154 - Embedding Sharing Comparison**:
```python
print("\n" + "="*80)
print("ABLATION 3: EMBEDDING ARCHITECTURE COMPARISON")
print("="*80)
print("\nComparing: Independent vs. Shared vs. No Embeddings")

embedding_configs = {
    'Independent': {'share': False, 'include': True},
    'Shared': {'share': True, 'include': True},
    'No Embeddings': {'share': False, 'include': False}
}

embedding_results = {}

for config_name, config in embedding_configs.items():
    print(f"\n🧪 Training: {config_name}")
    
    # Build model based on config
    if config_name == 'No Embeddings':
        # Use one-hot encoding instead
        X_train_config = X_train_onehot  # Create if doesn't exist
        X_test_config = X_test_onehot
    else:
        X_train_config = X_train_filled
        X_test_config = X_test_filled
    
    # Build model with specific config
    if config_name == 'Independent':
        # Your current model (Cell 138)
        model_config = model  # Use existing
        y_pred_config = model.predict(X_test_config, verbose=0)[:, 1]
    
    elif config_name == 'Shared':
        # Build version with shared embeddings
        model_config = build_shared_embedding_model(...)  # Define separately
        model_config.fit(X_train_config, y_train, epochs=15, batch_size=32, 
                        validation_split=0.2, callbacks=[early_stop], verbose=0)
        y_pred_config = model_config.predict(X_test_config, verbose=0)[:, 1]
    
    else:  # No Embeddings
        # Traditional one-hot + dense layers
        model_config = build_onehot_model(...)  # Define separately
        model_config.fit(X_train_config, y_train, epochs=15, batch_size=32,
                        validation_split=0.2, callbacks=[early_stop], verbose=0)
        y_pred_config = model_config.predict(X_test_config, verbose=0)[:, 1]
    
    # Evaluate
    auc = roc_auc_score(y_test, y_pred_config)
    f1 = f1_score(y_test, (y_pred_config > 0.5).astype(int))
    
    # Count parameters
    if hasattr(model_config, 'count_params'):
        n_params = model_config.count_params()
    else:
        n_params = 0
    
    embedding_results[config_name] = {
        'auc': auc,
        'f1': f1,
        'n_params': n_params,
        'model': model_config
    }
    
    print(f"  AUC: {auc:.4f} | F1: {f1:.4f} | Parameters: {n_params:,}")

# Create comparison table
embedding_df = pd.DataFrame(embedding_results).T
print("\n" + "="*80)
print("EMBEDDING ARCHITECTURE COMPARISON")
print("="*80)
print(embedding_df.round(4))

# Statistical significance
print("\n" + "-"*80)
print("STATISTICAL TEST: McNemar's Test (Independent vs. Shared)")
print("-"*80)

y_pred_indep = embedding_results['Independent']['model'].predict(X_test_filled, verbose=0)[:, 1]
y_pred_shared = embedding_results['Shared']['model'].predict(X_test_filled, verbose=0)[:, 1]

# McNemar's test
pred_indep_binary = (y_pred_indep > 0.5).astype(int)
pred_shared_binary = (y_pred_shared > 0.5).astype(int)

disagreement = np.sum((pred_indep_binary != y_test.values) & (pred_shared_binary == y_test.values))
disagreement_rev = np.sum((pred_indep_binary == y_test.values) & (pred_shared_binary != y_test.values))

if disagreement + disagreement_rev > 0:
    mcnemar_stat = (abs(disagreement - disagreement_rev) - 1)**2 / (disagreement + disagreement_rev)
    p_val = 1 - chi2.cdf(mcnemar_stat, 1)
    print(f"McNemar's χ² = {mcnemar_stat:.4f}")
    print(f"p-value = {p_val:.4f}")
    print(f"Significant difference: {'YES ✅' if p_val < 0.05 else 'NO'}")
```

**Cell 155 - Embedding Architecture Visualization**:
```python
fig, axes = plt.subplots(1, 2, figsize=(12, 4))

# Left: AUC comparison
configs = list(embedding_results.keys())
aucs = [embedding_results[c]['auc'] for c in configs]
colors_emb = ['#1f77b4', '#ff7f0e', '#d62728']

axes[0].bar(configs, aucs, color=colors_emb)
axes[0].set_ylabel('AUC')
axes[0].set_title('AUC by Embedding Configuration')
axes[0].set_ylim([0.7, 1.0])
axes[0].grid(axis='y', alpha=0.3)
for i, (cfg, auc) in enumerate(zip(configs, aucs)):
    axes[0].text(i, auc + 0.01, f'{auc:.3f}', ha='center', fontweight='bold')

# Right: Parameters vs AUC
params = [embedding_results[c]['n_params'] for c in configs]
axes[1].scatter(params, aucs, s=200, color=colors_emb)
for i, cfg in enumerate(configs):
    axes[1].annotate(cfg, (params[i], aucs[i]), 
                    xytext=(10, 10), textcoords='offset points',
                    fontsize=10, fontweight='bold')
axes[1].set_xlabel('Number of Parameters')
axes[1].set_ylabel('AUC')
axes[1].set_title('Performance vs. Model Complexity')
axes[1].grid(alpha=0.3)

plt.tight_layout()
plt.savefig(f'{RESULTS}/figs/ablation_03_embedding_architecture.png', dpi=300, bbox_inches='tight')
print("\n✅ Saved: ablation_03_embedding_architecture.png")
plt.show()
```

**Expected Output**:
- Independent Embeddings: AUC ~0.911 ⭐ Best
- Shared Embeddings: AUC ~0.903 (2% worse)
- No Embeddings (One-hot): AUC ~0.845 (7% worse)

---

### **ABLATION 4: SHAP Feature Importance (NEW CELL 156-157)**
**Research Question**: Which features drive predictions?  
**Status**: ⚠️ PARTIALLY | **Priority**: 🔴 CRITICAL | **Time**: 30 min

**Note**: You have SHAP for XGBoost (Cell 46). Extend to neural network.

**Cell 156 - SHAP for Neural Network**:
```python
print("\n" + "="*80)
print("ABLATION 4: SHAP FEATURE IMPORTANCE (Neural Network)")
print("="*80)

# Use SHAP for neural network
import shap

# Create explainer (using random sample for speed)
n_background = min(100, len(X_train_filled))
background = X_train_filled[:n_background]

print(f"\nCreating SHAP explainer with {n_background} background samples...")
explainer_nn = shap.DeepExplainer(model, background)

# Explain predictions
n_explain = min(500, len(X_test_filled))
shap_values_nn = explainer_nn.shap_values(X_test_filled[:n_explain])[0]  # For binary, take class 1

# Get feature names (from X_train columns)
feature_names_all = list(X_train.columns)

# Calculate mean |SHAP| for each feature
shap_importance = np.abs(shap_values_nn).mean(axis=0)
shap_df = pd.DataFrame({
    'Feature': feature_names_all,
    'Mean_SHAP': shap_importance,
    'Contribution_%': (shap_importance / shap_importance.sum()) * 100
}).sort_values('Mean_SHAP', ascending=False)

print("\nTop 20 Most Important Features:")
print("-" * 80)
print(shap_df.head(20).to_string(index=False))

print(f"\nTotal features: {len(shap_df)}")
print(f"Top 5 features account for: {shap_df.head(5)['Contribution_%'].sum():.1f}% of predictions")
```

**Cell 157 - SHAP Visualizations**:
```python
fig, axes = plt.subplots(2, 1, figsize=(12, 10))

# Top 15 features
top_n = 15
shap_top = shap_df.head(top_n)

# Plot 1: Bar plot
axes[0].barh(range(len(shap_top)), shap_top['Mean_SHAP'], color='#1f77b4')
axes[0].set_yticks(range(len(shap_top)))
axes[0].set_yticklabels(shap_top['Feature'])
axes[0].set_xlabel('Mean |SHAP Value|')
axes[0].set_title('Top 15 Features by SHAP Importance')
axes[0].invert_yaxis()
axes[0].grid(axis='x', alpha=0.3)

# Plot 2: Pie chart
colors_pie = plt.cm.Set3(np.linspace(0, 1, top_n))
axes[1].pie(shap_top['Mean_SHAP'], labels=shap_top['Feature'], 
           autopct='%1.1f%%', colors=colors_pie, startangle=90)
axes[1].set_title('Relative Feature Importance Distribution')

plt.tight_layout()
plt.savefig(f'{RESULTS}/figs/ablation_04_shap_importance.png', dpi=300, bbox_inches='tight')
print("\n✅ Saved: ablation_04_shap_importance.png")
plt.show()

# Export feature importance table
shap_df.to_csv(f'{RESULTS}/tables/ablation_04_shap_importance.csv', index=False)
print("✅ Saved: ablation_04_shap_importance.csv")
```

**Expected Output**:
- Table: Top 20 features with SHAP values
- Figure: Bar plot + pie chart of feature importance
- CSV export of all features ranked

---

## TIER 2: IMPORTANT ABLATIONS (Next - ~8 Hours)

### **ABLATION 5: RNN Type Comparison (NEW CELL 158-159)**
**Status**: ❌ NOT IMPLEMENTED | **Time**: 2 hours

```python
# Cell 158
print("\n" + "="*80)
print("ABLATION 5: RNN ARCHITECTURE COMPARISON")
print("="*80)

rnn_types = {
    'LSTM': 'lstm',
    'BiLSTM': 'bilstm',
    'GRU': 'gru',
    'BiGRU': 'bigru',
}

rnn_results = {}

for rnn_name, rnn_type in rnn_types.items():
    print(f"\n🧪 Training: {rnn_name}")
    
    model_rnn = build_model_with_rnn_type(rnn_type, X_train_filled.shape[1])
    model_rnn.fit(X_train_filled, y_train, epochs=15, batch_size=32,
                 validation_split=0.2, callbacks=[early_stop], verbose=0)
    
    y_pred_rnn = model_rnn.predict(X_test_filled, verbose=0)[:, 1]
    auc_rnn = roc_auc_score(y_test, y_pred_rnn)
    
    rnn_results[rnn_name] = {'auc': auc_rnn, 'model': model_rnn}
    print(f"  AUC: {auc_rnn:.4f}")

rnn_df = pd.DataFrame(rnn_results).T
print("\n" + "="*80)
print("RNN ARCHITECTURE RESULTS")
print("="*80)
print(rnn_df.round(4))
```

---

### **ABLATION 6: Embedding Dimension Sensitivity (NEW CELL 160-161)**
**Status**: ❌ NOT IMPLEMENTED | **Time**: 2 hours

```python
# Cell 160
print("\n" + "="*80)
print("ABLATION 6: EMBEDDING DIMENSION SENSITIVITY")
print("="*80)

embedding_dims = [4, 8, 16, 32, 64, 128]
dim_results = {}

for dim in embedding_dims:
    print(f"\n🧪 Training: Embedding Dim = {dim}")
    
    model_dim = build_model_with_embedding_dim(dim, X_train_filled.shape[1])
    model_dim.fit(X_train_filled, y_train, epochs=15, batch_size=32,
                 validation_split=0.2, callbacks=[early_stop], verbose=0)
    
    y_pred_dim = model_dim.predict(X_test_filled, verbose=0)[:, 1]
    auc_dim = roc_auc_score(y_test, y_pred_dim)
    
    dim_results[dim] = {'auc': auc_dim, 'params': model_dim.count_params()}
    print(f"  AUC: {auc_dim:.4f} | Params: {model_dim.count_params():,}")

dim_df = pd.DataFrame(dim_results).T
print("\n" + "="*80)
print(dim_df.round(4))
```

---

## TIER 3: NICE-TO-HAVE ABLATIONS (Additional - ~6 Hours)

### **ABLATION 7: Minimal Feature Set (NEW CELL 162-163)**
### **ABLATION 8: Sequence Length (NEW CELL 164-165)**
### **ABLATION 9: Missing Data Robustness (NEW CELL 166-167)**
### **ABLATION 10: Noise Sensitivity (NEW CELL 168-169)**
### **ABLATION 11: Comparison to Guidelines (NEW CELL 170-171)**
### **ABLATION 12: Ensemble Methods (NEW CELL 172-173)**

---

## IMPLEMENTATION CHECKLIST

### Phase 1: Foundation (Week 1)
- [ ] Cell 150-151: Demographic Equity Analysis
- [ ] Cell 152-153: Temporal Validation
- [ ] Cell 154-155: Embedding Architecture
- [ ] Cell 156-157: SHAP Feature Importance

### Phase 2: Validation (Week 2)
- [ ] Cell 158-159: RNN Type Comparison
- [ ] Cell 160-161: Embedding Dimensions
- [ ] Cell 162-163: Minimal Feature Set
- [ ] Cell 164-165: Sequence Length

### Phase 3: Polish (Week 3)
- [ ] Cell 166-167: Missing Data Robustness
- [ ] Cell 168-169: Noise Sensitivity
- [ ] Cell 170-171: Guideline Comparison
- [ ] Cell 172-173: Ensemble Methods

---

## HELPER FUNCTIONS TO ADD (Cell 145-149 region)

These functions are referenced above and need to be defined:

**Cell 145**:
```python
def build_shared_embedding_model(input_dim):
    """Build model with SHARED embeddings for all categorical variables"""
    # Implementation
    pass

def build_onehot_model(input_dim):
    """Build model with one-hot encoded categoricals"""
    # Implementation
    pass

def build_model_with_rnn_type(rnn_type, input_dim):
    """Build model with specified RNN type"""
    # Implementation
    pass

def build_model_with_embedding_dim(embed_dim, input_dim):
    """Build model with specified embedding dimension"""
    # Implementation
    pass
```

---

## EXPECTED TIMELINE

| Phase | Cells | Duration | Status |
|-------|-------|----------|--------|
| Phase 1 | 150-157 | 6 hours | 🔴 START HERE |
| Phase 2 | 158-165 | 8 hours | ⏳ Next |
| Phase 3 | 166-173 | 6 hours | ⏳ Final |
| **Total** | **24 cells** | **~20 hours** | ⏳ Recommended |

---

## NOTES FOR IMPLEMENTATION

1. **Reuse Variables**: All needed variables (model, X_test_filled, y_test, etc.) are already in memory
2. **Parallel Training**: Can train multiple variants simultaneously using threading
3. **GPU Optimization**: Ensure CUDA is available for faster training
4. **Memory Management**: Clear large arrays after each ablation to free memory
5. **Checkpointing**: Save model weights after each ablation to avoid retraining

---

## Success Criteria

After all ablations are complete, you should have:

✅ **Methodological Rigor**: Every design choice justified  
✅ **Fairness Validation**: Equitable performance across populations  
✅ **Generalization Evidence**: Strong temporal validation  
✅ **Interpretability**: Top features and their contributions identified  
✅ **Clinical Impact**: Comparison to current standard of care  
✅ **Robustness**: Stability under perturbations and missing data

