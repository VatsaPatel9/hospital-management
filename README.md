# Hospital Management System
----
## Motivation

I chose hospital management as a concentration because I believed I could achieve a great deal due to the subject's breadth, and I believed I could develop an appropriate database for the same reason and for the following reasons:
- Create a system to improve patient care.
- Decrease hospital operational expenses.
- Improved coordination across various departments.
- Establish a single point of control for senior management

## Description

Health buddy is a full fledge database with all the required classes which starts from the creating an appointment until keeping the record of the payments. This database has 10 tables which are as follows:
1.	Appointment 
2.	Area
3.	Category
4.	Doctors
5.	Patient 
6.	Payment
7.	Prescription
8.	Receptionist
9.	Report 
10.	User

where,
the Appointment table houses the list of all the patients who have sought an appointment and all of the patients' documents, the following photographs depict the appointment table.
<p align="center">
  <img src="https://user-images.githubusercontent.com/63264063/145896397-bf68dd77-9bd3-4cfa-bd52-2656d6ce4925.png" />
</p>

The first column in the above table is "aid," which stands for application id, which is the unique identifier for each individual request; it also serves as the primary key for the table. The second column has "pid," which serves as both the secondary and main key for the table "patient," followed by "cid," which serves as the primary key for the table category, and "did," which serves as the primary key for the table "doctor," which is included in this table. The reason for utilizing this table is because it requires all of the data from the other tables; all of the data is tied to one another.

## Conceptual Model

**ER-Diagram**

<p align="center">
  <img src="https://user-images.githubusercontent.com/63264063/145896868-26185807-e893-405e-8b42-bd7137052e42.png" />
</p>

<p align="center">
  <img src="https://user-images.githubusercontent.com/63264063/145896966-b04f317a-7007-41a4-80bb-d9a7c1960521.png" />
</p>

Each of the entities listed above has its own set of properties that aid in data storage. The weak entities rely on the strong entity. Numerous characteristics are generated from the primary property. There are ten primary entities in all. There are a total of nine relationships shown

## Relational Database Schema
<p align="center">
<img width="539" alt="image" src="https://user-images.githubusercontent.com/63264063/145897363-6296de08-9ca7-4d09-a043-40203cad0653.png">
</p>

