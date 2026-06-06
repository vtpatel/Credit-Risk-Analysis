--- Create Table

CREATE TABLE credit_risk_analysis (
   id BIGINT,
    loan_amnt FLOAT,
    funded_amnt FLOAT,
    term VARCHAR(50),
    int_rate FLOAT,
    installment FLOAT,
    grade VARCHAR(10),
    sub_grade VARCHAR(10),
    emp_length VARCHAR(50),
    home_ownership VARCHAR(50),
    annual_inc FLOAT,
    verification_status VARCHAR(50),
    loan_status INT,
    purpose VARCHAR(100),
    dti FLOAT,
    fico_range_low FLOAT,
    fico_range_high FLOAT,
    open_acc FLOAT,
    pub_rec FLOAT,
    revol_bal FLOAT,
    revol_util FLOAT,
    total_acc FLOAT,
    application_type VARCHAR(50),
    loan_to_income FLOAT)

SELECT *
FROM credit_risk_analysis
LIMIT 10

--- Total number of loans

SELECT COUNT(*) AS total_loans
FROM credit_risk_analysis

--- Total defaulted loans

SELECT COUNT(*) AS total_defaulted_loan
FROM credit_risk_analysis
WHERE loan_status=1

---Default rate analysis

SELECT 
ROUND(COUNT(CASE WHEN loan_status=1 THEN 1 END)*100/COUNT(*),2) AS Default_loan_percentage
FROM credit_risk_analysis

--- Average loan amount

SELECT AVG(loan_amnt) AS avg_loan_amnt
FROM credit_risk_analysis 

--- Default by Credit Grades

SELECT grade, 
COUNT(*) AS total_loans,
SUM(loan_status) AS defaulted_loans
FROM credit_risk_analysis
GROUP BY grade
ORDER BY defaulted_loans DESC

--- Default percentage by Grade

SELECT grade,
COUNT(*) AS total_loans,
SUM(loan_status) AS defaulted_loans,
SUM(loan_status)*100/COUNT(*) AS default_percentage
FROM credit_risk_analysis
GROUP BY grade
ORDER BY default_percentage DESC

--- Analyze loan defaults by purpose

SELECT purpose,
COUNT(*) AS total_loan,
SUM(loan_status) AS defaulted_loan,
SUM(loan_status)*100/COUNT(*) AS default_percentage
FROM credit_risk_analysis
GROUP BY purpose
ORDER BY default_percentage DESC

--- Analyze loan defaults by house ownership

SELECT home_ownership,
COUNT(*) AS total_loans,
SUM(loan_status) AS defaulted_loan,
SUM(loan_status)*100/COUNT(*) AS default_percentage
FROM credit_risk_analysis
GROUP BY home_ownership
ORDER BY default_percentage DESC

--- Analyze loan defaults by employment length

SELECT emp_length,
COUNT(*) AS total_loans,
SUM(loan_status) AS defaulted_loan,
SUM(loan_status)*100/COUNT(*) AS default_percentage
FROM credit_risk_analysis
GROUP BY emp_length
ORDER BY default_percentage DESC

--- Analyze default risk by DTI

SELECT ROUND(AVG(dti)::numeric ,2) AS avg_dti,
loan_status,
COUNT(*) AS total_loan
FROM credit_risk_analysis
GROUP BY loan_status

--- Analyze default risk by interest rate

SELECT ROUND(AVG(int_rate)::numeric ,2) AS avg_itr,
loan_status,
COUNT(*) AS total_loan
FROM credit_risk_analysis
GROUP BY loan_status

--- Default rate by credit score

SELECT CASE WHEN ((fico_range_low+fico_range_high)/2) >=800 THEN 'Excellent'
            WHEN ((fico_range_low+fico_range_high)/2) >=740 THEN 'Very Good'
            WHEN ((fico_range_low+fico_range_high)/2) >=670 THEN 'Good'
            WHEN ((fico_range_low+fico_range_high)/2) >=580 THEN 'Fair'
            ELSE 'poor'
            END AS fico_category,
COUNT(*) AS total_loan,
SUM(loan_status) AS defaulted_loans,
SUM(loan_status) *100/COUNT(*) AS default_percentage

FROM credit_risk_analysis
GROUP BY fico_category
ORDER BY default_percentage DESC

--- Default rate based on loan to income

SELECT 
CASE
    WHEN loan_to_income <= 0.10 THEN '0 - 10%'
    WHEN loan_to_income <= 0.20 THEN '11% - 20%'
    WHEN loan_to_income <= 0.30 THEN '21% - 30%'
    WHEN loan_to_income <= 0.40 THEN '31% - 40%'
    ELSE '40%+'
END AS loan_income_range,

COUNT(*) AS total_loans,
SUM(loan_status) AS defaulted_loans,
SUM(loan_status) *100/COUNT(*) AS default_percentage

FROM credit_risk_analysis

GROUP BY loan_income_range
ORDER BY default_percentage DESC


