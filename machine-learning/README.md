# Machine Learning Classification of High-Protein Foods

## 📌 Project Overview

This project investigates whether nutrient values can be used to classify foods as **high in protein** without directly using protein as a predictor.

The project was completed as part of **DATA7703** and involved data preprocessing, exploratory data analysis, machine learning model development, evaluation, feature analysis and hyperparameter tuning.

---

## 🎯 Research Question

**Can nutrient values be used to classify whether a food is high in protein without directly using the protein value itself?**

Foods containing **10 g or more of protein per 100 g** were classified as high-protein.

The protein variable was removed from the predictors after creating the target variable to prevent data leakage. Nitrogen was also removed because it is strongly related to protein content.

---

## 📊 Dataset

The project used the **Australian Food Composition Database (AFCD) Release 3**.

The dataset initially contained:

- **1,588 food samples**
- **272 columns**

After preprocessing:

- **1,588 samples**
- **146 columns**
- No remaining missing values

### Preprocessing

The workflow included:

- Removing identifier and descriptive columns
- Removing protein from the predictor variables
- Removing nitrogen to reduce potential data leakage
- Removing columns with more than 70% missing values
- Median imputation for remaining numerical missing values
- Creating the binary `High_Protein` target variable

---

## 🔎 Exploratory Data Analysis

EDA was performed to investigate:

- High-protein vs non-high-protein food distribution
- Relationships between nutrient variables
- Correlations between features
- Important predictors associated with high-protein classification

The dataset was only mildly imbalanced, with approximately:

- **57%** not high-protein
- **43%** high-protein

---

## 🤖 Machine Learning Models

Three initial classification models were compared:

1. Logistic Regression
2. k-Nearest Neighbours (k-NN)
3. Random Forest

Random Forest was then further optimised using **GridSearchCV with 5-fold cross-validation**.

---

## 📈 Model Performance

| Model | Accuracy | Precision | Recall | F1-Score |
|---|---:|---:|---:|---:|
| Logistic Regression | 95.6% | 94.8% | 94.8% | 94.8% |
| k-NN | 91.2% | 93.5% | 85.2% | 89.1% |
| Random Forest | 96.5% | 95.6% | 96.3% | 95.9% |
| Tuned Random Forest | **97.2%** | **96.3%** | **97.0%** | **96.7%** |

The tuned Random Forest achieved the strongest overall performance.

---

## ⚙️ Hyperparameter Tuning

GridSearchCV was used with 5-fold cross-validation to evaluate different Random Forest configurations.

The best-performing configuration was:

```text
n_estimators = 200
max_depth = None
min_samples_split = 5
