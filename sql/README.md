# SQL Scripts

This folder contains the SQL scripts used in this project.

SELECT Age,Gender,AppointmentRegistration,ApointmentData,DayOfTheWeek,Status,Diabetes,Alcoolism,HiperTension,Handcap,Smokes,Scholarship,Tuberculosis,Sms_Reminder,AwaitingTime,MyUnknownColumn,`MyUnknownColumn_[0]`,
COUNT(*) AS DuplicateCount
FROM medical_appointments.medical_no_show
GROUP BY Age,Gender,AppointmentRegistration,ApointmentData,DayOfTheWeek,Status,Diabetes,Alcoolism,HiperTension,Handcap,Smokes,Scholarship,Tuberculosis,Sms_Reminder,AwaitingTime,MyUnknownColumn,`MyUnknownColumn_[0]`
HAVING COUNT(*)>1;

SELECT *
FROM medical_appointments.medical_no_show
WHERE Age=32
AND Gender='F'
AND AppointmentRegistration='2014-10-22T14:23:23Z';

SELECT SUM(DuplicateCount-1) AS Total_Duplicate_Rows
FROM
(SELECT Age,Gender,AppointmentRegistration,ApointmentData,DayOfTheWeek,Status,Diabetes,Alcoolism,HiperTension,Handcap,Smokes,Scholarship,Tuberculosis,Sms_Reminder,AwaitingTime,MyUnknownColumn,`MyUnknownColumn_[0]`,
COUNT(*) AS DuplicateCount
FROM medical_appointments.medical_no_show
GROUP BY Age,Gender,AppointmentRegistration,ApointmentData,DayOfTheWeek,Status,Diabetes,Alcoolism,HiperTension,Handcap,Smokes,Scholarship,Tuberculosis,Sms_Reminder,AwaitingTime,MyUnknownColumn,`MyUnknownColumn_[0]`
HAVING COUNT(*)>1)
AS Duplicates;
## Finding the duplicates and counting the total number of duplicates##
SELECT COUNT(MyUnknownColumn) AS Column1_Count,
COUNT(`MyUnknownColumn_[0]`) AS Column2_Count
FROM medical_appointments.medical_no_show;


SELECT
    MyUnknownColumn,
    `MyUnknownColumn_[0]`
FROM medical_appointments.medical_no_show;

SELECT
    COUNT(*) AS Empty_Column1
FROM medical_appointments.medical_no_show
WHERE MyUnknownColumn = '';

SELECT
    COUNT(*) AS Empty_Column2
FROM medical_appointments.medical_no_show
WHERE `MyUnknownColumn_[0]` = '';
## From the query, it was found out that these two columns( last and second last ones aren't empty; but the SQL returned it as NON null because it identified space as values. SO we don't need those ones as they are equal to null values. Hence, check whether these two columns has values equal to spavce and then remove it.


SELECT
    `MyUnknownColumn_[0]`
FROM medical_appointments.medical_no_show
WHERE `MyUnknownColumn_[0]` <> '';
## this query checked whether there are any non null values in this column other than space 

SELECT
    `MyUnknownColumn_[0]`
FROM medical_appointments.medical_no_show
WHERE `MyUnknownColumn_[0]` <> '';
## returns one value that exists in this column and is the only value in that column

SELECT *
FROM medical_appointments.medical_no_show
WHERE `MyUnknownColumn_[0]` = '299115';
## asked to return therow with this value, seems like there is onlyone value and that doesn't make any sense and the entire two columns can be removed
ALTER TABLE medical_appointments.medical_no_show
DROP COLUMN MyUnknownColumn,
DROP COLUMN `MyUnknownColumn_[0]`;
## successfully dropped last two columns




CREATE TABLE medical_appointments.medical_no_show_clean AS
SELECT DISTINCT *
FROM medical_appointments.medical_no_show;

SELECT COUNT(*) AS Total_Rows
FROM medical_appointments.medical_no_show_clean;

## These two queries are used to return only the distinct values which means duplicate free but keeping the original value. This keeps the original data as well as keeps the duplicate free ones as well separately.

SELECT
    Status,
    COUNT(*) AS Total_Patients
FROM medical_appointments.medical_no_show_clean
GROUP BY Status;
##This query gives the number of patients who showed vs  those who didn't show. From th eoutput, it is evident that 55,376 patients showed up while 24,110 didn't show.
##Select column name Count(*) As total From schema. tablename Group By ##
SELECT
Gender,
COUNT(*) AS Total_Patients
FROM medical_appointments.medical_no_show_clean
Group BY Gender;
##This shows how many males and females are there

SELECT
    MIN(Age) AS Minimum_Age,
    MAX(Age) AS Maximum_Age,
    ROUND(AVG(Age),2) AS Average_Age
FROM medical_appointments.medical_no_show_clean;
##This gives minimum age, maximum age, and average age

SELECT Gender, Status,
COUNT(*) AS Total_Patients
FROM medical_appointments.medical_no_show_clean
GROUP BY Gender, Status
ORDER BY Gender, Status;
##Instead of just asking:

"How many males and females are there?"

we're now asking:

Among males, how many showed up and how many missed their appointments?

Among females, how many showed up and how many missed their appointments?

SELECT
    Sms_Reminder,
    Status,
    COUNT(*) AS Total_Patients
FROM medical_appointments.medical_no_show_clean
GROUP BY Sms_Reminder, Status
ORDER BY Sms_Reminder, Status;
##Why are we doing this?

Your dataset contains the variable Sms_Reminder, which indicates the reminder status.

This query tells us, for each SMS reminder category (0, 1, or 2):

How many patients Showed Up
How many patients Did Not Show Up

After seeing the results, we'll determine whether SMS reminders appear to be associated with attendance.##

SELECT
    Diabetes,
    Status,
    COUNT(*) AS Total_Patients
FROM medical_appointments.medical_no_show_clean
GROUP BY Diabetes, Status
ORDER BY Diabetes, Status;

SELECT
    HiperTension,
    Status,
    COUNT(*) AS Total_Patients
FROM medical_appointments.medical_no_show_clean
GROUP BY HiperTension, Status
ORDER BY HiperTension, Status;

SELECT
    Alcoolism,
    Status,
    COUNT(*) AS Total_Patients
FROM medical_appointments.medical_no_show_clean
GROUP BY Alcoolism, Status
ORDER BY Alcoolism, Status;

SELECT
    Smokes,
    Status,
    COUNT(*) AS Total_Patients
FROM medical_appointments.medical_no_show_clean
GROUP BY Smokes, Status
ORDER BY Smokes, Status;

SELECT
    Scholarship,
    Status,
    COUNT(*) AS Total_Patients
FROM medical_appointments.medical_no_show_clean
GROUP BY Scholarship, Status
ORDER BY Scholarship, Status;

SELECT
    Tuberculosis,
    Status,
    COUNT(*) AS Total_Patients
FROM medical_appointments.medical_no_show_clean
GROUP BY Tuberculosis, Status
ORDER BY Tuberculosis, Status;

SELECT
    DayOfTheWeek,
    Status,
    COUNT(*) AS Total_Patients
FROM medical_appointments.medical_no_show_clean
GROUP BY DayOfTheWeek, Status
ORDER BY DayOfTheWeek;

SELECT
    MIN(AwaitingTime) AS Minimum_Wait,
    MAX(AwaitingTime) AS Maximum_Wait,
    ROUND(AVG(AwaitingTime),2) AS Average_Wait
FROM medical_appointments.medical_no_show_clean;






| SQL Query              | Question it answers                                            | Why it's useful                                                      |
| ---------------------- | -------------------------------------------------------------- | -------------------------------------------------------------------- |
| Show-Up vs No-Show     | How many patients attended or missed appointments?             | Understand the outcome variable.                                     |
| Gender Distribution    | How many males and females are there?                          | Describe the study population.                                       |
| Age Summary            | What is the age range and average?                             | Describe the participants.                                           |
| Gender vs Status       | Is attendance different between males and females?             | Explore a possible relationship.                                     |
| SMS Reminder vs Status | Is attendance different across SMS reminder groups?            | Explore whether reminders are associated with attendance.            |
| Diabetes vs Status     | Is attendance different for diabetic patients?                 | Explore a health-related factor.                                     |
| Hypertension vs Status | Is attendance different for patients with hypertension?        | Explore another health-related factor.                               |
| Alcoholism vs Status   | Does alcoholism appear related to attendance?                  | Explore another predictor.                                           |
| Smoking vs Status      | Does smoking appear related to attendance?                     | Explore another predictor.                                           |
| Scholarship vs Status  | Is attendance different for scholarship recipients?            | Explore a socioeconomic factor.                                      |
| Tuberculosis vs Status | What does attendance look like for patients with tuberculosis? | Explore a medical factor (keeping in mind the sample is very small). |
| Day of Week vs Status  | Which days have more no-shows?                                 | Look for scheduling patterns.                                        |
| Waiting Time Summary   | How long do patients wait between booking and appointment?     | Understand the waiting time variable.                                |




