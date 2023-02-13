USE [BirdAccommodation]
GO
INSERT [dbo].[User] ([user_id], [role], [name], [password], [address], [phone], [email], [status], [user_img], [token]) VALUES (N'U1', N'admin', N'RaeKyo', N'12345', N'somewhere on earth', N'019191919', N'rae@gmail.com', 1, N'none_img', NULL)
INSERT [dbo].[User] ([user_id], [role], [name], [password], [address], [phone], [email], [status], [user_img], [token]) VALUES (N'U2', N'user', N'U1', N'123456', N'on moon', N'099299992', N'u1@gmail.com', 0, N'none_img', NULL)
GO
INSERT [dbo].[Bookings] ([booking_id], [user_id], [date_from], [date_to], [total_price], [status]) VALUES (N'Bo1', N'U1', CAST(N'2022-12-01' AS Date), CAST(N'2022-12-05' AS Date), 600, NULL)
INSERT [dbo].[Bookings] ([booking_id], [user_id], [date_from], [date_to], [total_price], [status]) VALUES (N'Bo2', N'U1', CAST(N'2022-12-01' AS Date), CAST(N'2022-12-05' AS Date), 700, NULL)
GO
INSERT [dbo].[Birds] ([bird_id], [user_id], [species], [breed], [age], [gender], [description]) VALUES (N'B4', NULL, N'Seagull', N'Bule and yellow tail', 2, N'Male', N'A god bird')
INSERT [dbo].[Birds] ([bird_id], [user_id], [species], [breed], [age], [gender], [description]) VALUES (N'Bi1', NULL, N'Ostrich', N'Green-cheeked', 2, N'Male', N'A chaos bird')
INSERT [dbo].[Birds] ([bird_id], [user_id], [species], [breed], [age], [gender], [description]) VALUES (N'Bi2', NULL, N'Cockatiel', N'Normal grey', 3, N'Female', N'A playful bird')
INSERT [dbo].[Birds] ([bird_id], [user_id], [species], [breed], [age], [gender], [description]) VALUES (N'Bi3', NULL, N'Penguin', N'Peach page', 2, N'Male', N'A energytic bird')
GO
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (N'S1', N'Bird food and supplies', N'Providing a variety of bird food and supplies to meet the needs of different species', NULL, 100)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (N'S2', N'Bird boarding', N'Providing a safe and secure environment for birds to stay while their owners are away', NULL, 200)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (N'S3', N'Bird grooming', N'Cleaning and caring for birds to keep their feathers in good condition', NULL, 200)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (N'S4', N'Bird training', N'Providing training for birds to improve their behavior and socialization skills', NULL, 500)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (N'S6', N'Bird play areas', N'Providing space and activities for birds to play and socialize', NULL, 400)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (N'S7', N'Bird enrichment activities', N'Providing activities and toys to keep birds mentally stimulated and entertained', NULL, 300)
INSERT [dbo].[Services] ([service_id], [name], [description], [status], [price]) VALUES (N'S8', N'Bird photography', N'Taking photographs of birds while they are staying at the accommodation to document their stay', NULL, 500)
GO
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [bird_image], [date]) VALUES (N'A1', NULL, N'none', CAST(N'2022-12-01' AS Date))
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [bird_image], [date]) VALUES (N'A2', NULL, N'none', CAST(N'2022-12-02' AS Date))
INSERT [dbo].[DailyReport] ([dreport_id], [booking_id], [bird_image], [date]) VALUES (N'A3', NULL, N'none', CAST(N'2022-12-03' AS Date))
GO
