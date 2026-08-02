# Medical Appointment No-Show Analysis Report

## Objective

The objective of this project is to analyze a medical appointment dataset to identify the factors associated with patient no-shows. SQL was used for data cleaning and exploratory data analysis, while Jamovi was used to perform descriptive statistics, chi-square tests, independent samples t-test, and binary logistic regression. The findings provide insights that can help healthcare providers reduce missed appointments and improve scheduling efficiency.
## Dataset Description

The dataset used in this project contains **50,000 medical appointment records** and was obtained from the publicly available Medical Appointment No-Show dataset on Kaggle. The dataset includes patient demographic information, medical conditions, appointment characteristics, and appointment outcomes.

### Variables Included

- **Age** – Patient age (years)
- **Gender** – Male or Female
- **Diabetes** – Whether the patient has diabetes
- **Hypertension** – Whether the patient has hypertension
- **Alcoholism** – Whether the patient has alcoholism
- **Handicap** – Number of disabilities recorded
- **Scholarship** – Indicates whether the patient receives government financial assistance
- **Tuberculosis** – Indicates whether the patient has tuberculosis
- **SMS Reminder** – Number of SMS reminders received before the appointment
- **Waiting Time** – Number of days between scheduling and appointment
- **Day of the Week** – Day on which the appointment occurred
- **Status** – Appointment outcome (Show-Up or No-Show)

The dependent variable in this study is **Status (Show-Up vs No-Show)**. All other variables were analyzed as potential predictors of patient attendance.

## Data Cleaning and Preparation

The dataset was cleaned and prepared using SQL before statistical analysis. Data quality checks were performed to ensure accurate and reliable results.

### Data Cleaning Steps

- Removed duplicate records (none were found).
- Checked for missing values across all variables.
- Verified patient ages and retained valid observations.
- Calculated **Waiting Time** as the number of days between appointment registration and appointment date.
- Standardized categorical variables such as Gender and Appointment Status.
- Created analysis-ready variables for statistical testing.

After data cleaning, the final dataset contained **50,000 complete patient appointment records** for analysis.

## SQL Data Cleaning and Exploratory Analysis

SQL was used to clean, validate, and explore the dataset before statistical analysis. The SQL scripts included data validation, feature engineering, and exploratory analysis to ensure that the dataset was ready for hypothesis testing and predictive modeling.

### Data Cleaning Tasks

The SQL data cleaning script included:

- Checking for duplicate records
- Identifying missing values
- Verifying data integrity
- Creating the **Waiting Time** variable
- Standardizing categorical variables
- Preparing the final analysis dataset



### Exploratory Data Analysis (EDA)

SQL exploratory analysis was performed to summarize the dataset and understand patient characteristics before conducting statistical analyses.

The SQL queries included:

- Total number of appointments
- Show-Up vs No-Show counts
- Gender distribution
- Average patient age
- Average waiting time
- Appointment distribution by weekday
- Frequency of chronic diseases
- SMS reminder distribution
- Scholarship distribution

The complete SQL scripts are available in the **sql** folder:
data_cleaning.sql

exploratory_data_analysis.sql
## Key Business Insights
