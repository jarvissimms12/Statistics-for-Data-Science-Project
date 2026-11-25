# 📐 Statistics for Data Science — Course Project (NYIT, 2025)

![R](https://img.shields.io/badge/R-4.x-276DC3?logo=r)
![Python](https://img.shields.io/badge/Python-3.8+-blue?logo=python)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

Team coursework from the graduate Statistics for Data Science course in the MS Data
Science program at New York Institute of Technology. Works through the
[Kaggle credit card fraud dataset](https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud)
(284,807 transactions, 492 fraud) step by step: descriptive statistics, feature
scaling, stratified train/test splitting, and a logistic regression baseline evaluated
with ROC/AUC over repeated splits.

This is foundational coursework. My applied work on real public data is in
[state-of-nyc](https://github.com/jarvissimms12/state-of-nyc) and
[nyc-heat-anomalies](https://github.com/jarvissimms12/nyc-heat-anomalies). The full
fraud-detection model (SMOTE + Random Forest) is in
[Credit-Card-Fraud](https://github.com/jarvissimms12/Credit-Card-Fraud).

## What each script does

| Script | Module | Technique |
|---|---|---|
| `R/01_descriptive_stats.R` | 1 | Dimensions, nulls, quartiles, variance/SD of `Amount`, violin plot by class |
| `python/descriptive_stats.py` | 1 | Same analysis in pandas/seaborn, plus skewness and kurtosis |
| `R/02_scale_amount.R` | 3 | Z-score standardization of `Amount` |
| `R/03_train_test_split.R` | 3 | Stratified 75/25 split (`caTools::sample.split`), distribution check across sets |
| `R/04_logistic_regression_auc.R` | 7 | Logistic regression `Class ~ Amount`, confusion matrix, ROC curve, AUC; repeated over 10 random splits with the median AUC reported |

## How to run

Download `creditcard.csv` from the Kaggle link above into the repo root, then:

```r
install.packages(c("readr", "dplyr", "ggplot2", "caTools", "ROCR"))
source("R/01_descriptive_stats.R")
source("R/04_logistic_regression_auc.R")
```

```bash
pip install pandas seaborn matplotlib
python python/descriptive_stats.py
```

## Notes

- `Amount` alone is a weak predictor of fraud. The logistic model here is a
  deliberately simple baseline for practicing evaluation (confusion matrix, ROC,
  AUC, variance across splits), not a production fraud model.
- With 0.17% fraud, a 0.5 probability threshold flags almost nothing. Module 7
  reports AUC because it doesn't depend on a threshold.

---

**Jarvis Simms** | MS Data Science, NYIT 2025 | Brooklyn, NY ·
[GitHub](https://github.com/jarvissimms12) · [LinkedIn](https://www.linkedin.com/in/jarvis-simms-846062136/)
