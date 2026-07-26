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



