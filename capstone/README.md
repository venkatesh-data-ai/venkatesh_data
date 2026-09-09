# Interpretable Statistical Modelling for High-Dimensional Biological Data

A Data Science Capstone project focused on implementing interpretable Mixture of Experts models in Python for high-dimensional heterogeneous biological data.

## Project Overview

The project investigated how statistical models can provide accurate predictions while remaining interpretable for complex biological datasets.

The main models were **BLLiM (Block-diagonal Locally Linear Mapping)** and **GLLiM (Global Locally Linear Mapping)**, originally introduced by Blein-Nicolas et al. (2024).

Both models were reimplemented in Python using a scikit-learn-style API. :contentReference[oaicite:8]{index=8}

## Research Focus

The project addressed the challenge of modelling datasets containing many features but relatively few observations while maintaining model interpretability.

The approach combined:

- Mixture of Experts modelling
- Local regression
- High-dimensional statistical modelling
- Structured covariance modelling
- Machine learning benchmarking
- Model interpretability

## Methodology

### Synthetic Experiments

Twelve synthetic datasets were generated using nonlinear transformations and different covariance structures:

- Independent
- Block-diagonal
- Factor
- Toeplitz

Seven models were benchmarked:

- BLLiM
- GLLiM
- GLLiM-Lw
- Random Forest
- Support Vector Machine / SVR
- MARS
- SIR

Model performance was evaluated using **Root Mean Squared Error (RMSE)**. :contentReference[oaicite:9]{index=9}

### Real-World Dataset

The models were also applied to a maize proteomics dataset containing:

- **233 samples**
- **973 protein features**

The objective was to predict:

- Leaf Area Index under Water Deficit (`LAI.WD`)
- Water Use under Water Deficit (`WU.WD`)

:contentReference[oaicite:10]{index=10}

## Python Implementation

A major technical contribution was the development of a reusable Python implementation of BLLiM using a scikit-learn-style interface.

The implementation was designed to integrate with modern machine learning workflows and reduce reliance on the original R-based implementation. :contentReference[oaicite:11]{index=11}

## Key Results

The experiments showed that model performance depended on the underlying noise structure.

- BLLiM performed particularly well with structured noise such as block-diagonal and Toeplitz covariance.
- GLLiM performed better under independent noise conditions.
- GLLiM-Lw provided a useful balance between the approaches.
- BLLiM achieved the lowest RMSE for both target traits on the maize proteomics dataset.
- The models produced interpretable cluster-specific regression coefficients and protein interaction networks.

:contentReference[oaicite:12]{index=12}

## Interpretability

An important aspect of the project was understanding **why** models produced their predictions rather than focusing only on predictive accuracy.

The BLLiM implementation provided:

- Cluster-specific regression coefficients
- Protein relationship information
- Interpretable local models
- Biological network insights

This helped connect statistical modelling results with biological interpretation. :contentReference[oaicite:13]{index=13}

## Challenges

Key technical challenges included:

- Translating complex R-based algorithms into Python
- Debugging and validating the implementation
- Managing high-dimensional covariance matrices
- Selecting the number of mixture clusters
- Validating results against the reference implementation

:contentReference[oaicite:14]{index=14}

## Future Work

Potential improvements include:

- Automated cluster selection using AIC/BIC
- Sparse matrix techniques
- GPU acceleration
- Feature reduction
- Improved computational scalability
- Applications to genomics, clinical diagnostics and neuroimaging

:contentReference[oaicite:15]{index=15}

## Project Files

- `capstone_report.pdf` — Final Data Science Capstone report
- `capstone_presentation.pptx` — Project presentation
- `executive_summary.pdf` — Executive summary
- `week4_run_method.R` — Supporting R analysis
- `week6_run_method.R` — Supporting R analysis
- `plot_results.R` — Results visualisation
- `regression_coefficients.csv` — Regression coefficient results

## Education

**DATA7903 — Data Science Capstone Project**

**The University of Queensland**

**Author:** Venkatesh Athikulam Muthusamy
