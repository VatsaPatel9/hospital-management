SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (1, 9,CAST(N'2020-12-06T23:26:01.000' AS Date),CAST(N'2020-12-06T18:26:01.000' AS Time), 2000,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (2, 9,CAST(N'2020-1-06T23:26:01.000' AS Date),CAST(N'2020-12-06T19:26:01.000' AS Time), 1000,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (3, 9,CAST(N'2020-2-06T23:26:01.000' AS Date),CAST(N'2020-12-06T23:26:01.000' AS Time), 500,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (4, 9,CAST(N'2020-3-06T23:26:01.000' AS Date),CAST(N'2020-12-06T20:26:01.000' AS Time), 2500,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (5, 9,CAST(N'2020-4-06T23:26:01.000' AS Date),CAST(N'2020-12-06T20:26:01.000' AS Time), 3000,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (6, 9,CAST(N'2020-5-06T23:26:01.000' AS Date),CAST(N'2020-12-06T22:26:01.000' AS Time), 2000,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (7, 9,CAST(N'2020-6-06T23:26:01.000' AS Date),CAST(N'2020-12-06T23:26:01.000' AS Time), 200,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (8, 9,CAST(N'2020-7-06T23:26:01.000' AS Date),CAST(N'2020-12-06T21:26:01.000' AS Time), 900,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (9, 9,CAST(N'2020-8-06T23:26:01.000' AS Date),CAST(N'2020-12-06T22:26:01.000' AS Time), 1000,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (10, 9,CAST(N'2020-10-06T23:26:01.000' AS Date),CAST(N'2020-12-06T22:26:01.000' AS Time), 1200,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (11, 9,CAST(N'2020-11-06T23:26:01.000' AS Date),CAST(N'2020-12-06T20:26:01.000' AS Time), 1300,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (12, 9,CAST(N'2020-12-06T23:26:01.000' AS Date),CAST(N'2020-12-06T23:26:01.000' AS Time), 1400,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (13, 9,CAST(N'2020-1-06T23:26:01.000' AS Date),CAST(N'2020-12-06T20:26:01.000' AS Time), 1450,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (14, 9,CAST(N'2020-2-06T23:26:01.000' AS Date),CAST(N'2020-12-06T21:26:01.000' AS Time), 2050,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (15, 9,CAST(N'2020-12-06T23:26:01.000' AS Date),CAST(N'2020-12-06T22:26:01.000' AS Time), 1050,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (16, 9,CAST(N'2020-11-06T23:26:01.000' AS Date),CAST(N'2020-12-06T23:26:01.000' AS Time), 2000,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (17, 9,CAST(N'2020-5-06T23:26:01.000' AS Date),CAST(N'2020-12-06T20:26:01.000' AS Time), 2000,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (18, 9,CAST(N'2020-4-06T23:26:01.000' AS Date),CAST(N'2020-12-06T22:26:01.000' AS Time), 2000,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (19, 9,CAST(N'2020-6-06T23:26:01.000' AS Date),CAST(N'2020-12-06T21:26:01.000' AS Time), 2000,1)
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (20, 9,CAST(N'2020-7-06T23:26:01.000' AS Date),CAST(N'2020-12-06T23:26:01.000' AS Time), 2000,1)
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO

SET IDENTITY_INSERT [dbo].[Payment] ON 
INSERT [dbo].[Payment] ([payid], [aid], [date], [time] ,[amount],[status]) VALUES (21, 9,CAST(N'2019-7-06T23:26:01.000' AS Date),CAST(N'2020-12-06T23:26:01.000' AS Time), 2000,1)
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
select * from Payment