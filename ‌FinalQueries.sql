





--insert a new prescription
SET IDENTITY_INSERT [dbo].[Prescription] ON 
INSERT [dbo].[Prescription] ([preid], [aid], [details] ,[date], [did], [reportName] ,  [status]) VALUES (24,22, 'positive',CAST(N'2019-8-116T23:26:01.000' AS Date),24,'cough',1)
SET IDENTITY_INSERT [dbo].[Prescription] OFF;
--docter who is male and is from ambani hospital
select * from  Doctor
where gender='Male' AND hospitalname='ambani';
-- Delete a area whoes name is dayton
Delete From area 
where name='dayton';
-- select patients who lives in mumbai
select p.fname+' '+p.lname as Full_Name,p.dob,p.phno 
from Patient p
left outer join Area a on p.areaId=a.areaId;
--specific patient appointments with full details who has symptoms as fever
select p.fname+' '+p.lname as Full_Name,p.dob,p.phno,p.gender, a.date , a.symptoms,a.aid 
from Patient p
left outer join Appointment a on p.pid=a.pid
where a.symptoms='Fever';
-- Appointments specific payment of above 2000
select a.cid,a.date,a.symptoms,a.pid,a.did,p.amount,p.payid 
from Payment p
left outer join Appointment a on p.aid=a.aid
where p.amount>2000;
--docters which are treating in specific domain(dentist)
select  p.fname+' '+p.lname as Full_Name,p.hospitalname,p.phno,p.gender,c.name 
from Doctor p
left outer join Category c on p.cid=c.cid
where c.name='Dentist';
--basic charge of a docter
select * from Doctor
where  basicCharge>'100'
-- fetching email and password of the patient 
select p.fname+' '+p.lname as Full_Name,u.email,u.pwd
from Patient p
left outer join User1 u on p.uid=u.uid;
--deleting a prescription using specific id
select * from Prescription
Delete From Prescription 
where preid=21; -- change the id
select * from Prescription








