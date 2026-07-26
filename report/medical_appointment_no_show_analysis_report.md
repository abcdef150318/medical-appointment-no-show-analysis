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
