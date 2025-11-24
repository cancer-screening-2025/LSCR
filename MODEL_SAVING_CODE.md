# 🔧 MODEL PREDICTION SAVING CODE

## Copy-Paste This Code Into Your Model Cells

For each model training cell, add the corresponding code **AT THE VERY END** of the cell (after all training, evaluation, and plotting code).

---

## 📋 Model Cells to Update

### Cell 72: GRU-D + Static Embeddings
**Add at the end:**
```python
# Save predictions for comprehensive comparison
y_test_grud_static = y_test.copy()
y_pred_probs_grud_static = y_pred_probs.copy()
y_pred_grud_static = y_pred.copy()
print("✅ GRU-D + Static predictions saved!")
```

---

### Cell 73: GRU-D + ID + Static Embeddings
**Add at the end:**
```python
# Save predictions for comprehensive comparison
y_test_grud_full = y_test.copy()
y_pred_probs_grud_full = y_pred_probs.copy()
y_pred_grud_full = y_pred.copy()
print("✅ GRU-D + ID + Static predictions saved!")
```

---

### Cell 78: BiLSTM + Attention
**Add at the end:**
```python
# Save predictions for comprehensive comparison
y_test_bilstm_attn = y_test.copy()
y_pred_probs_bilstm_attn = y_pred_probs.copy()
y_pred_bilstm_attn = y_pred.copy()
print("✅ BiLSTM + Attention predictions saved!")
```

---

### Cell 84: LSTM + Static Embeddings
**Add at the end:**
```python
# Save predictions for comprehensive comparison
y_test_lstm_static = y_test.copy()
y_pred_probs_lstm_static = y_pred_probs.copy()
y_pred_lstm_static = y_pred.copy()
print("✅ LSTM + Static predictions saved!")
```

---

### Cell 86: LSTM + Attention
**Add at the end:**
```python
# Save predictions for comprehensive comparison
y_test_lstm_attn = y_test.copy()
y_pred_probs_lstm_attn = y_pred_probs.copy()
y_pred_lstm_attn = y_pred.copy()
print("✅ LSTM + Attention predictions saved!")
```

---

### Cell 88: BiLSTM + Static Embeddings
**Add at the end:**
```python
# Save predictions for comprehensive comparison
y_test_bilstm_static = y_test.copy()
y_pred_probs_bilstm_static = y_pred_probs.copy()
y_pred_bilstm_static = y_pred.copy()
print("✅ BiLSTM + Static predictions saved!")
```

---

### Cell 90: BiLSTM + ID + Static Embeddings (BEST MODEL) ⭐
**Add at the end:**
```python
# Save predictions for comprehensive comparison
y_test_best = y_test.copy()
y_pred_probs_best = y_pred_probs.copy()
y_pred_best = y_pred.copy()
print("✅✅✅ BEST MODEL predictions saved! ✅✅✅")
```

---

### Cell 94: GRU + Static Embeddings
**Add at the end:**
```python
# Save predictions for comprehensive comparison
y_test_gru_static = y_test.copy()
y_pred_probs_gru_static = y_pred_probs.copy()
y_pred_gru_static = y_pred.copy()
print("✅ GRU + Static predictions saved!")
```

---

### Cell 96: GRU + Attention
**Add at the end:**
```python
# Save predictions for comprehensive comparison
y_test_gru_attn = y_test.copy()
y_pred_probs_gru_attn = y_pred_probs.copy()
y_pred_gru_attn = y_pred.copy()
print("✅ GRU + Attention predictions saved!")
```

---

### Cell 98: GRU + ID + Static Embeddings
**Add at the end:**
```python
# Save predictions for comprehensive comparison
y_test_gru_full = y_test.copy()
y_pred_probs_gru_full = y_pred_probs.copy()
y_pred_gru_full = y_pred.copy()
print("✅ GRU + ID + Static predictions saved!")
```

---

### Cell 100: GRU-D Basic
**Add at the end:**
```python
# Save predictions for comprehensive comparison
y_test_grud = y_test.copy()
y_pred_probs_grud = y_pred_probs.copy()
y_pred_grud = y_pred.copy()
print("✅ GRU-D Basic predictions saved!")
```

---

## 📝 Variable Naming Convention

The variable names follow this pattern:
- `y_test_MODELNAME`: Test labels (same for all models)
- `y_pred_probs_MODELNAME`: Predicted probabilities (used for AUC, bootstrap)
- `y_pred_MODELNAME`: Binary predictions (used for sensitivity, specificity)

**Model Name Abbreviations:**
- `grud_static`: GRU-D + Static Embeddings
- `grud_full`: GRU-D + ID + Static Embeddings
- `bilstm_attn`: BiLSTM + Attention
- `lstm_static`: LSTM + Static Embeddings
- `lstm_attn`: LSTM + Attention
- `bilstm_static`: BiLSTM + Static Embeddings
- `best`: BiLSTM + ID + Static (your best model)
- `gru_static`: GRU + Static Embeddings
- `gru_attn`: GRU + Attention
- `gru_full`: GRU + ID + Static Embeddings
- `grud`: GRU-D Basic

---

## ⚠️ Important Notes

1. **Add at the END of each cell** - after all other code
2. **Re-run the cell** after adding the code
3. **Check for the ✅ message** to confirm saving worked
4. **Don't skip any models** - more models = better comparison
5. **Test sets must match** - all models should use same test set

---

## 🧪 Verification

After adding code to all cells and re-running them, check if variables exist:

```python
# Run this in a new cell to verify
saved_models = {
    'GRU-D + Static': 'y_test_grud_static' in dir(),
    'GRU-D + ID + Static': 'y_test_grud_full' in dir(),
    'BiLSTM + Attention': 'y_test_bilstm_attn' in dir(),
    'LSTM + Static': 'y_test_lstm_static' in dir(),
    'LSTM + Attention': 'y_test_lstm_attn' in dir(),
    'BiLSTM + Static': 'y_test_bilstm_static' in dir(),
    'BEST MODEL': 'y_test_best' in dir(),
    'GRU + Static': 'y_test_gru_static' in dir(),
    'GRU + Attention': 'y_test_gru_attn' in dir(),
    'GRU + ID + Static': 'y_test_gru_full' in dir(),
    'GRU-D Basic': 'y_test_grud' in dir(),
}

print("Model Prediction Status:")
print("="*60)
for model, saved in saved_models.items():
    status = "✅ SAVED" if saved else "❌ MISSING"
    print(f"{status:15} {model}")

total_saved = sum(saved_models.values())
print("="*60)
print(f"Total: {total_saved}/{len(saved_models)} models ready for comparison")

if total_saved >= 2:
    print("\n✅ Ready to run Cell 129 (Comprehensive Comparison)!")
else:
    print("\n⚠️  Need at least 2 models. Add saving code and re-run model cells.")
```

---

## 🚀 After Saving All Predictions

Once you see at least 2 models with ✅ SAVED status:

1. **Navigate to Cell 129** (Comprehensive Model Comparison)
2. **Run the cell**
3. **Wait 15-20 minutes** (depending on number of models)
4. **Check results/tables/** for output CSV files

**That's it!** You now have complete statistical comparison for your rebuttal.

---

## 💡 Pro Tips

### Save Time:
- Start with just 3 models (e.g., BEST, GRU-D Static, LSTM Static)
- Run Cell 129 to test the workflow
- Then add remaining models

### Save Memory:
- If running out of memory, execute model cells one at a time
- Add saving code, run cell, then move to next model
- Don't execute all models simultaneously

### Debug Issues:
- If a model cell throws error, check if these variables exist:
  - `y_test`: Test labels
  - `y_pred_probs`: Predicted probabilities  
  - `y_pred`: Binary predictions
- These should be created by each model cell before the saving code

---

## 📊 Expected Output After Saving

When you run the verification cell above, you should see:

```
Model Prediction Status:
============================================================
✅ SAVED       GRU-D + Static
✅ SAVED       GRU-D + ID + Static
❌ MISSING     BiLSTM + Attention
✅ SAVED       LSTM + Static
❌ MISSING     LSTM + Attention
✅ SAVED       BiLSTM + Static
✅ SAVED       BEST MODEL
❌ MISSING     GRU + Static
❌ MISSING     GRU + Attention
❌ MISSING     GRU + ID + Static
❌ MISSING     GRU-D Basic
============================================================
Total: 5/11 models ready for comparison

✅ Ready to run Cell 129 (Comprehensive Comparison)!
```

Even 5 models is enough for a strong rebuttal!

---

**Quick Reference:**
- **Where to add:** End of model cells (72, 73, 78, 84, 86, 88, 90, 94, 96, 98, 100)
- **What to add:** 3 lines (y_test copy, y_pred_probs copy, y_pred copy)
- **Then:** Re-run those cells
- **Next:** Run Cell 129 for comprehensive comparison
