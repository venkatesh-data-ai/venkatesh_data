# Interpretable Statistical Modelling for High-Dimensional Biological Data

## 📌 Project Overview

This Data Science Capstone project investigates interpretable statistical modelling approaches for high-dimensional and heterogeneous biological data.

The project focuses on **Mixture of Experts (MoE)** models, particularly **BLLiM, GLLiM and GLLiM-Lw**, and compares their performance with established machine learning and statistical approaches.

The final implementation focused on developing Python-based implementations of the models and evaluating their predictive performance and interpretability.

---

## 🎯 Project Objective

The main objective was to investigate whether Mixture of Experts models can provide accurate predictions while maintaining useful interpretability when working with high-dimensional biological datasets.

The project focused on:

- Predictive performance
- Model interpretability
- High-dimensional feature spaces
- Heterogeneous data
- Cluster-specific regression relationships
- Biological feature and network interpretation

---

## 🧠 Models

The project evaluated the following approaches:

### Mixture of Experts Models

- BLLiM
- GLLiM
- GLLiM-Lw

### Baseline Models

- Random Forest
- Support Vector Machine / SVR
- MARS
- SIR

Model performance was primarily evaluated using **Root Mean Squared Error (RMSE)**.

---

## 📊 Synthetic Data

A series of synthetic datasets was created to evaluate model behaviour under different conditions.

The experiment included:

- **12 synthetic datasets**
- **200 samples per dataset**
- **50 features**
- Multiple nonlinear functions
- Different covariance and noise structures

The covariance/noise structures included:

- Independent
- Block
- Factor
- Toeplitz

The synthetic experiments were repeated across multiple independent runs to compare model performance under different data-generating conditions.

---

## 🌽 Real Biological Dataset

The models were also evaluated using a real **maize proteomics dataset**.

The dataset contained:

- **233 samples**
- **973 protein features**

The analysis focused on predicting biological traits including:

- Leaf Area Index under Water Deficit (LAI.WD)
- Water Use under Water Deficit (WU.WD)

Model evaluation used **10-fold cross-validation**.

---

## 🔬 Methodology

The overall workflow included:

1. Synthetic data generation
2. Data preprocessing
3. Model implementation
4. Model fitting
5. Prediction
6. RMSE-based evaluation
7. Comparison with baseline models
8. Application to real biological data
9. Regression coefficient analysis
10. Protein network interpretation

The Python implementation was designed using a scikit-learn-style API to provide a consistent interface for model fitting and prediction.

---

## 📈 Key Findings

The experiments demonstrated that model performance depended on the underlying noise and covariance structure.

### Synthetic Data

- **BLLiM** performed particularly well under structured noise conditions such as Block and Toeplitz structures.
- **GLLiM** performed better under independent noise conditions.
- **GLLiM-Lw** provided a useful trade-off between the modelling approaches.

### Real Data

BLLiM achieved the lowest RMSE for the evaluated real-data target traits.

The model also provided interpretable cluster-specific regression coefficients and protein interaction/co-regulation networks.

---

## 🔎 Model Interpretability

A major focus of the project was understanding **why** the models make their predictions.

BLLiM produced cluster-specific regression weights that helped identify groups of proteins associated with different biological relationships.

The analysis also examined protein networks derived from covariance structures, revealing modular patterns that could support biological interpretation.

---

## 🛠️ Technologies

- Python
- R
- Scikit-learn
- Statistical Modelling
- Machine Learning
- Pandas
- NumPy
- Matplotlib
- Data Visualisation
- Cross-Validation
- High-Dimensional Data Analysis
