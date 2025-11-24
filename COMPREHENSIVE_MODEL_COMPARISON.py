# ============================================================================
# COMPREHENSIVE MODEL COMPARISON - Statistical Analysis for All Models
# ============================================================================
# This script provides complete statistical comparison of all DL models
# Add this cell to your notebook after all model training cells

# STEP 1: Collect predictions from ALL models
# Add these lines at the END of each model training cell:

print("="*80)
print("📋 COMPREHENSIVE MODEL COMPARISON SETUP")
print("="*80)

# Model 1: XGBoost Baseline (Cell 45)
# After y_pred_probs = best_xgb.predict_proba(X_test_scaled)[:, 1]
# Add: y_test_xgb, y_pred_probs_xgb, y_pred_xgb = y_test.copy(), y_pred_probs.copy(), y_pred.copy()

# Model 2: Simple LSTM (Cell 49)
# After y_pred_probs = model.predict(X_test_lstm).ravel()
# Add: y_test_lstm, y_pred_probs_lstm, y_pred_lstm = y_test.copy(), y_pred_probs.copy(), y_pred.copy()

# Model 3: LSTM + Static Embeddings (Cell 53)
# After y_pred_probs = model.predict([X_test_lstm, X_test_race, X_test_educ, X_test_meduc]).ravel()
# Add: y_test_lstm_static, y_pred_probs_lstm_static, y_pred_lstm_static = y_test.copy(), y_pred_probs.copy(), y_pred.copy()

# Model 4: LSTM + ID + Static Embeddings (Cell 57)
# After y_pred_probs = model.predict([X_test_lstm, X_test_id, X_test_race, X_test_educ, X_test_meduc]).ravel()
# Add: y_test_lstm_full, y_pred_probs_lstm_full, y_pred_lstm_full = y_test.copy(), y_pred_probs.copy(), y_pred.copy()

# Model 5: BiLSTM (Cell 59)  
# After y_pred_probs = model.predict(X_test_lstm).ravel()
# Add: y_test_bilstm, y_pred_probs_bilstm, y_pred_bilstm = y_test.copy(), y_pred_probs.copy(), y_pred.copy()

# Model 6: BiLSTM + Static Embeddings (Cell 66)
# After y_pred_probs = model.predict([X_test_lstm, X_test_race, X_test_educ, X_test_meduc]).ravel()
# Add: y_test_bilstm_static, y_pred_probs_bilstm_static, y_pred_bilstm_static = y_test.copy(), y_pred_probs.copy(), y_pred.copy()

# Model 7: BiLSTM + ID + Static Embeddings (Cell 71/73) - BEST MODEL
# After y_pred_probs = model.predict([X_test_lstm, X_test_id, X_test_race, X_test_educ, X_test_meduc]).ravel()
# Add: y_test_best, y_pred_probs_best, y_pred_best = y_test.copy(), y_pred_probs.copy(), y_pred.copy()

# Model 8: GRU-D (Cell 72)
# After y_pred_probs = model.predict([X_test_gru, mask_test_seq, X_test_race, X_test_educ, X_test_meduc]).ravel()
# Add: y_test_grud, y_pred_probs_grud, y_pred_grud = y_test.copy(), y_pred_probs.copy(), y_pred.copy()

print("\n✅ After adding the above lines to each model cell, run this cell:")
print("="*80)

# STEP 2: Run comprehensive comparison
models_to_compare = [
    ("XGBoost Baseline", "y_test_xgb", "y_pred_probs_xgb", "y_pred_xgb"),
    ("LSTM", "y_test_lstm", "y_pred_probs_lstm", "y_pred_lstm"),
    ("LSTM + Static Embeds", "y_test_lstm_static", "y_pred_probs_lstm_static", "y_pred_lstm_static"),
    ("LSTM + ID + Static", "y_test_lstm_full", "y_pred_probs_lstm_full", "y_pred_lstm_full"),
    ("BiLSTM", "y_test_bilstm", "y_pred_probs_bilstm", "y_pred_bilstm"),
    ("BiLSTM + Static Embeds", "y_test_bilstm_static", "y_pred_probs_bilstm_static", "y_pred_bilstm_static"),
    ("BiLSTM + ID + Static (BEST)", "y_test_best", "y_pred_probs_best", "y_pred_best"),
    ("GRU-D", "y_test_grud", "y_pred_probs_grud", "y_pred_grud"),
]

# Check which models have predictions saved
available_models = []
missing_models = []

for name, y_test_var, y_probs_var, y_pred_var in models_to_compare:
    if y_test_var in dir() and y_probs_var in dir() and y_pred_var in dir():
        available_models.append((name, eval(y_test_var), eval(y_probs_var), eval(y_pred_var)))
    else:
        missing_models.append(name)

print(f"\n✅ Found {len(available_models)} models with saved predictions:")
for name, _, _, _ in available_models:
    print(f"   • {name}")

if missing_models:
    print(f"\n⚠️  Missing predictions for {len(missing_models)} models:")
    for name in missing_models:
        print(f"   • {name}")

# STEP 3: Bootstrap Confidence Intervals for all models
print("\n" + "="*80)
print("📊 BOOTSTRAP ANALYSIS - Computing 95% Confidence Intervals")
print("="*80)
print(f"Running {len(available_models)} models × 1000 bootstrap samples...")
print(f"Estimated time: {len(available_models) * 1.5:.1f} minutes\n")

bootstrap_results = {}
for name, y_t, y_p, _ in available_models:
    print(f"🔄 Analyzing {name}...")
    bootstrap_results[name] = bootstrap_metrics(y_t, y_p, n_bootstrap=1000)
    print_bootstrap_results(bootstrap_results[name], name)

# STEP 4: Clinical Metrics for all models
print("\n" + "="*80)
print("🏥 CLINICAL METRICS - Sensitivity, Specificity, PPV, NPV")
print("="*80)

clinical_results = {}
for name, y_t, _, y_p in available_models:
    clinical_results[name] = compute_clinical_metrics(y_t, y_p)
    print_clinical_metrics(clinical_results[name], name)

# Create comparison table
comparison_df = create_clinical_metrics_table(clinical_results)
print("\n📊 CLINICAL METRICS COMPARISON TABLE:")
print("="*80)
print(comparison_df.to_string())

# Save to CSV
comparison_df.to_csv('clinical_metrics_comparison_all_models.csv')
print(f"\n✅ Saved to: clinical_metrics_comparison_all_models.csv")

# STEP 5: Statistical Significance Tests (McNemar's Test)
print("\n" + "="*80)
print("📈 STATISTICAL SIGNIFICANCE - McNemar's Test (vs XGBoost Baseline)")
print("="*80)

if len(available_models) > 1:
    baseline_name, baseline_y_test, _, baseline_y_pred = available_models[0]
    
    for name, y_t, _, y_p in available_models[1:]:
        print(f"\n{name} vs {baseline_name}:")
        print_statistical_comparison(baseline_y_test, baseline_y_pred, y_t, y_p, 
                                    baseline_name, name)

# STEP 6: Summary Table for Paper
print("\n" + "="*80)
print("📝 SUMMARY TABLE FOR MANUSCRIPT")
print("="*80)

summary_data = []
for name in bootstrap_results.keys():
    boot = bootstrap_results[name]
    clin = clinical_results[name]
    
    summary_data.append({
        'Model': name,
        'AUC': f"{boot['AUC'][0]:.4f} [{boot['AUC'][2]:.4f}, {boot['AUC'][3]:.4f}]",
        'F1': f"{boot['F1'][0]:.4f} [{boot['F1'][2]:.4f}, {boot['F1'][3]:.4f}]",
        'Sensitivity': f"{clin['Sensitivity (Recall)']:.4f}",
        'Specificity': f"{clin['Specificity']:.4f}",
        'PPV': f"{clin['PPV (Precision)']:.4f}",
        'NPV': f"{clin['NPV']:.4f}",
    })

summary_df = pd.DataFrame(summary_data)
print(summary_df.to_string(index=False))

# Save summary
summary_df.to_csv('model_performance_summary_table.csv', index=False)
print(f"\n✅ Saved to: model_performance_summary_table.csv")

print("\n" + "="*80)
print("✅ COMPREHENSIVE MODEL COMPARISON COMPLETE!")
print("="*80)
print("\nGenerated files:")
print("  1. clinical_metrics_comparison_all_models.csv")
print("  2. model_performance_summary_table.csv")
print("\nUse these tables directly in your manuscript rebuttal!")
