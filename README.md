# Credit Risk Analysis | Lending Club Loan Portfolio

## Project Overview

This project is an end-to-end **Credit Risk Analysis** project built using **Python, SQL, and Tableau**. The goal of the project is to analyze borrower and loan characteristics to identify the major factors that influence loan default risk.

The analysis was performed on a large Lending Club loan dataset containing more than **1.3 million loan records**. Python was used for data cleaning, SQL was used for business analysis, and Tableau was used to create interactive dashboards for risk monitoring and executive-level reporting.

---

## Business Objective

The main objective of this project is to understand which borrower groups are more likely to default and how different financial factors impact loan risk.

This project answers questions such as:

- What is the overall loan default rate?
- Which credit grades have the highest default risk?
- How does FICO score affect default probability?
- Does loan-to-income ratio increase default risk?
- Which loan purposes are riskier?
- Do renters default more than mortgage holders?
- How do joint applications compare with individual applications?

---

## Tools and Technologies

| Tool | Purpose |
|---|---|
| Python | Data cleaning and preprocessing |
| Pandas | Data manipulation |
| SQL | Credit risk analysis |
| Tableau | Dashboard visualization |
| GitHub | Project documentation and portfolio hosting |

---

## Project Workflow

### 1. Data Cleaning in Python

Data cleaning was performed using Python in a Kaggle notebook.

Main cleaning steps included:

- Removed unnecessary columns
- Handled missing values
- Standardized column names
- Converted data types
- Cleaned loan status categories
- Created default indicator column
- Created FICO score categories
- Created loan-to-income ratio buckets
- Prepared the cleaned dataset for SQL and Tableau analysis

Python Cleaning Notebook:

[View Data Cleaning Notebook](notebooks/credit_risk_cleaning.ipynb)

---

### 2. SQL Analysis

SQL was used to perform business and credit risk analysis on the cleaned dataset.

Main analysis areas included:

- Total loan count
- Total defaulted loans
- Overall default rate
- Default rate by credit grade
- Default rate by FICO score category
- Default rate by loan-to-income ratio
- Default rate by loan purpose
- Default rate by home ownership
- Default rate by employment length
- Default rate by application type
- Average DTI comparison between defaulted and non-defaulted borrowers
- Interest rate analysis

SQL File:

[View SQL Analysis](https://github.com/vtpatel/Credit-Risk-Analysis/blob/main/credit_risk_analysis.sql)

---

### 3. Tableau Dashboard

An interactive Tableau dashboard was created to present the final insights visually.

Dashboard sections include:

- Executive portfolio overview
- Default rate KPIs
- Credit grade risk analysis
- FICO score analysis
- Loan-to-income risk analysis
- Borrower profile analysis
- Home ownership risk comparison
- Loan purpose risk analysis

View Interactive Dashboard:

[Credit Risk Analysis Tableau Dashboard](https://public.tableau.com/app/profile/vivek.patel1658/viz/CreditRiskAnalysis_17798183028440/Dashboard1)

---

## Dataset Information

The original cleaned dataset contains more than **1.3 million loan records** and was used locally for Python cleaning, SQL analysis, and Tableau dashboard creation.

Due to GitHub file size limits, the full cleaned dataset is not included in this repository.

Key fields used in the project include:

- Loan amount
- Funded amount
- Interest rate
- Loan term
- Credit grade
- FICO score
- Debt-to-income ratio
- Annual income
- Home ownership
- Employment length
- Loan purpose
- Application type
- Loan status

---

## Key Metrics

| Metric | Value |
|---|---:|
| Total Loans | 1,345,310 |
| Defaulted Loans | 268,559 |
| Overall Default Rate | 20.0% |
| Average Loan Amount | $14,420 |
| Average Interest Rate | 13.2% |
| Average Interest Rate for Defaulted Loans | 15.71% |

---

## Key Business Insights

### 1. Overall Portfolio Risk

The loan portfolio contains **1,345,310 loans**, out of which **268,559 loans defaulted**. This results in an overall default rate of **20.0%**.

This means that around one-fifth of the loan portfolio resulted in default, showing a significant level of credit risk exposure.

---

### 2. Credit Grade is a Strong Default Indicator

Default risk increases significantly as borrower credit grade worsens.

Grade A borrowers have a default rate of **6.0%**, while Grade G borrowers have a default rate of **49.9%**.

This means Grade G borrowers default at more than **8 times** the rate of Grade A borrowers.

---

### 3. FICO Score Strongly Impacts Default Risk

Borrowers with lower FICO scores show higher default risk.

Fair FICO borrowers default at **26.28%**, while Excellent FICO borrowers default at only **6.41%**.

This shows that FICO score is an important factor for borrower risk segmentation.

---

### 4. Loan-to-Income Ratio Increases Risk

Borrowers with higher loan-to-income ratios have higher default rates.

Borrowers with loan-to-income ratios above **40%** default at **30.41%**, compared with **13.24%** for borrowers in the 0–10% range.

This indicates that higher debt burden increases the probability of default.

---

### 5. Loan Purpose Affects Default Probability

Small business loans show the highest default rate by loan purpose at **29.7%**.

This suggests that small business loans may require stricter review and stronger risk controls during the approval process.

---

### 6. Renters Have Higher Default Risk

Renters default at **23.2%**, while mortgage holders default at **17.2%**.

This shows that renters have around **6 percentage points** higher default risk than mortgage holders.

---

### 7. Joint Applications Show Higher Risk

Joint applications have a default rate of **24.6%**, which is higher than the overall portfolio default rate of **20.0%**.

This indicates that joint applications may require additional risk review.

---

## Final Executive Insight

Grade G borrowers default at **49.9%**, which is more than **8 times higher** than Grade A borrowers at **6.0%**. Renters default at **23.2%**, around **6 percentage points higher** than mortgage holders. Borrowers with loan-to-income ratios above **40%** default at **30.41%**, compared with the overall portfolio default rate of **20.0%** across more than **1.3 million loans**.

---

## Business Recommendations

Based on the analysis, the following recommendations can help reduce loan default risk:

- Review lower credit grades, especially Grades F and G, more carefully.
- Use FICO score as a key borrower risk segmentation factor.
- Monitor borrowers with loan-to-income ratios above 30%.
- Apply stricter checks for small business loans.
- Consider home ownership status when evaluating borrower risk.
- Review joint applications carefully because they show higher default rates.
- Use dashboard monitoring to track portfolio-level credit risk trends.

---

## Repository Structure

```text
credit-risk-analysis-lending-club/
│
├── notebooks/
│   └── credit_risk_cleaning.ipynb
│
├── sql/
│   └── credit_risk_analysis.sql
│
├── README.md
├── requirements.txt
└── .gitignore
