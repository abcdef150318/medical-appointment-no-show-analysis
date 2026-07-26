# medical-appointment-no-show-analysis
Healthcare data analysis project examining factors associated with missed medical appointments using Microsoft Excel, SQL, and Jamovi.


## Overview

This project investigates factors associated with missed medical appointments using a real-world healthcare dataset.

The project demonstrates an end-to-end healthcare analytics workflow, including SQL data cleaning, exploratory data analysis, descriptive statistics, hypothesis testing, and predictive modeling.

---

## Objectives

- Clean and validate healthcare appointment data
- Explore patient demographics and appointment patterns
- Identify factors associated with appointment attendance
- Build a predictive model using Binary Logistic Regression

---

## Tools

- SQL (MySQL)
- Microsoft Excel
- SPSS Statistics
- GitHub

---

## Dataset

Original dataset:
- 110,527 appointments

After SQL cleaning:
- 79,486 records

Statistical analysis:
- 50,000 records

---

## Data Cleaning

Performed using SQL.

Tasks included:

- Removed duplicate records
- Removed invalid age values
- Standardized variables
- Created Awaiting Time variable
- Validated cleaned dataset

---

## Exploratory Data Analysis

SQL was used to examine:

- Appointment status
- Gender distribution
- Diabetes
- Hypertension
- Alcoholism
- Smoking
- Scholarship
- SMS reminders
- Day of Week

---

## Statistical Analysis

### Descriptive Statistics

- Mean age = 37.8
- Median = 38
- Standard deviation = 22.8

---

### Chi-square Tests

Significant variables:

- Gender
- Diabetes
- Hypertension
- Alcoholism
- Smoking
- Scholarship
- Day of Week

Not significant:

- Tuberculosis
- SMS Reminder

---

### Independent Samples t-test

Compared mean age between:

- Show-Up
- No-Show

Result:

Older patients were significantly more likely to attend appointments.

---

### Binary Logistic Regression

Independent predictors included:

- Age
- Awaiting Time
- Hypertension
- Alcoholism
- Smoking
- Scholarship
- SMS Reminder

Model:

χ²(20) = 852

p < .001

McFadden R² = 0.0139

---

## Key Findings

Patients who were older and several clinical and appointment-related factors were independently associated with appointment attendance.

---

## Skills Demonstrated

- SQL
- Data Cleaning
- Data Validation
- Exploratory Data Analysis
- SPSS Statistics
- Chi-square Test
- Independent Samples t-test
- Binary Logistic Regression
- Statistical Reporting
