# Machine Learning Classification of High-Protein Foods

A machine learning classification project using nutritional data to predict whether a food is high in protein without directly using protein as a predictor.

## 📌 Project Overview

This project investigates the following research question:

> Can nutrient values be used to classify whether a food is high in protein without directly using the protein value itself?

The project uses the **Australian Food Composition Database (AFCD) Release 3** nutrient dataset. The data contains nutritional information for a wide range of foods measured per 100 grams.

A food was classified as **high protein** when its protein content was at least 10 g per 100 g. The protein variable was then removed from the predictors to prevent data leakage. Nitrogen was also removed because it is strongly related to protein content. :contentReference[oaicite:0]{index=0}

## 🧰 Technologies & Techniques

- Python
- Pandas
- Scikit-learn
- Logistic Regression
- k-Nearest Neighbours (k-NN)
- Random Forest
- GridSearchCV
- Feature scaling
- Median imputation
- Exploratory Data Analysis
- Correlation analysis
- Classification metrics
- Cross-validation
- Feature importance

## 📊 Dataset

The original dataset contained:

- **1,588 food samples**
- **272 columns**

After preprocessing:

- **1,588 food samples**
- **146 columns**
- No remaining missing values

Columns with more than 70% missing values were removed, while remaining numeric missing values were handled using median imputation. :contentReference[oaicite:1]{index=1}

The final classification dataset was mildly imbalanced, with approximately **57% not-high-protein** foods and **43% high-protein** foods. :contentReference[oaicite:2]{index=2}

## 🔍 Machine Learning Workflow

### 1. Data Preprocessing

- Loaded nutritional data using Pandas
- Removed unnecessary identifier and descriptive columns
- Created the `High_Protein` binary target
- Removed protein to prevent data leakage
- Removed nitrogen due to its strong relationship with protein
- Removed features with more than 70% missing values
- Applied median imputation to remaining numeric missing values

### 2. Exploratory Data Analysis

EDA included:

- Target class distribution
- Nutrient correlation heatmap
- Analysis of relationships between nutrients and the target
- Feature importance analysis

Important predictors identified included **tryptophan, phosphorus, selenium and zinc**. :contentReference[oaicite:3]{index=3}

### 3. Model Development

Three initial classification approaches were compared:

- Logistic Regression
- k-Nearest Neighbours
- Random Forest

Logistic Regression and k-NN used feature scaling, while Random Forest was trained on the unscaled data because tree-based models do not require standardisation. :contentReference[oaicite:4]{index=4} :contentReference[oaicite:5]{index=5}

### 4. Hyperparameter Tuning

Random Forest was optimised using **GridSearchCV with 5-fold cross-validation**.

The selected configuration was:

```text
n_estimators = 200
max_depth = None
min_samples_split = 5
