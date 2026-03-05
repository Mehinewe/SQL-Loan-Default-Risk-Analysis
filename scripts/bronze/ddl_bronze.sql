IF OBJECT_ID ('bronze.borrower_profiles', 'U') IS NOT NULL
	DROP TABLE bronze.borrower_profiles;
GO
  
CREATE TABLE bronze.borrower_profiles (
borrower_id			  NVARCHAR(50),
age					  INT,
state				  NVARCHAR(50),
education_level		  NVARCHAR(50),
employment_status	  NVARCHAR(50),
years_employed		  INT,
annual_income		  INT,
credit_score		  INT,
home_ownership		  NVARCHAR(50),
dependents			  INT,
existing_monthly_debt INT
);
GO


IF OBJECT_ID ('bronze.loan_applications', 'U') IS NOT NULL
	DROP TABLE bronze.loan_applications;
GO
  
CREATE TABLE bronze.loan_applications (
loan_id				NVARCHAR(50),
borrower_id			NVARCHAR(50),
application_date	DATE,
loan_purpose		NVARCHAR(50),
loan_amount			INT,
term_months			INT,
interest_rate		DECIMAL(5,2),
monthly_payment		DECIMAL(18,2),
dti_ratio			DECIMAL(5,2),
loan_status			NVARCHAR(50),
days_delinquent		INT,
defaulted			INT

);
GO
