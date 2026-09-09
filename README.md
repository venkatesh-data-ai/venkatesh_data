# Machine Learning Classification of High-Protein Foods Using Nutrient Data

## Overview
A DATA7703 Machine Learning project investigating whether nutrient values can classify foods as high protein without using protein itself as a predictor.

## Research Question
Can nutrient values be used to classify whether a food is high in protein without directly using the protein value itself?

## Dataset
- Australian Food Composition Database (AFCD) Release 3
- 1,588 food samples initially
- 272 columns initially
- Final cleaned dataset: 1,588 samples and 146 columns
- High-protein threshold: >= 10 g protein per 100 g
- Protein and nitrogen were excluded from predictors to reduce data leakage
- Missing-value columns above 70% were removed; remaining numeric missing values were median-imputed

## Machine Learning Workflow
1. Data cleaning and preprocessing
2. Exploratory data analysis
3. Logistic Regression
4. k-Nearest Neighbours (k-NN)
5. Random Forest
6. Random Forest hyperparameter tuning with GridSearchCV and 5-fold cross-validation
7. Model comparison using accuracy, precision, recall and F1-score
8. Feature importance analysis

## Results
| Model | Accuracy | Precision | Recall | F1-score |
|---|---:|---:|---:|---:|
| Logistic Regression | 95.6% | 94.8% | 94.8% | 94.8% |
| k-NN | 91.2% | 93.5% | 85.2% | 89.1% |
| Random Forest | 96.5% | 95.6% | 96.3% | 95.9% |
| Tuned Random Forest | **97.2%** | **96.3%** | **97.0%** | **96.7%** |

The tuned Random Forest produced the strongest overall performance. Important predictors included tryptophan, phosphorus, selenium and zinc.

## Key Skills Demonstrated
- Python-based machine learning workflow
- pandas data preparation
- Exploratory data analysis and visualisation
- Feature selection and leakage prevention
- Logistic Regression, k-NN and Random Forest
- GridSearchCV and cross-validation
- Classification metrics and confusion matrices
- Feature importance and model interpretation

## Portfolio Note
The original Python notebook/script is not included because the source code is not currently available. This repository therefore presents the submitted project report and its documented results without recreating or inventing source code.
