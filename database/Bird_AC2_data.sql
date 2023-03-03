USE [BirdAccommodation]
GO
SET IDENTITY_INSERT [dbo].[BirdType] ON 

INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (1, N'Ostrich')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (2, N'Cockatiel')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (3, N'Bald Eagle')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (4, N'Hummingbird')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (5, N'Pelican')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (6, N'Owl')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (7, N'Toucan')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (8, N'Flamingo')
INSERT [dbo].[BirdType] ([btype_id], [name]) VALUES (9, N'Crow')
SET IDENTITY_INSERT [dbo].[BirdType] OFF
GO
SET IDENTITY_INSERT [dbo].[Bird] ON 

INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (1, 2, 2, 2, N'Jobb', N'green cheeked', 0, NULL, NULL)
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (2, 2, 3, 2, N'Kenny', N'normal grey', 1, NULL, NULL)
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (3, 2, 4, 2, N'Hekko', N'peached face', 0, NULL, NULL)
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (4, 2, 5, 3, N'Elest', N'blue and yellow tail', 0, NULL, NULL)
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (6, 2, 3, 2, N'Typhoon', N'red tail', 1, N'null', N'')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (7, 2, 3, 2, N'RaeKyo', N'death', 0, N'null', N'')
INSERT [dbo].[Bird] ([bird_id], [user_id], [type_id], [age], [bird_name], [breed], [gender], [image], [description]) VALUES (8, 2, 3, 2, N'Tester', N'Very crazy', 0, N'null', N'')
SET IDENTITY_INSERT [dbo].[Bird] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([user_id], [email], [password], [name], [address], [phone], [role], [status], [user_img], [token]) VALUES (1, N'U1@gmail.com', N'12345', N'ADMIN_CORE', N'somewhere', N'0111111111', 1, 1, NULL, NULL)
INSERT [dbo].[User] ([user_id], [email], [password], [name], [address], [phone], [role], [status], [user_img], [token]) VALUES (2, N'U2@gmail.com', N'123456', N'USER_TEST', N'somewhere', N'0111111111', 0, 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (1, 2, 1, CAST(N'2023-02-15' AS Date), CAST(N'2023-02-22' AS Date), 0)
INSERT [dbo].[Booking] ([booking_id], [user_id], [bird_id], [date_from], [date_to], [status]) VALUES (4, 2, 2, CAST(N'2022-12-02' AS Date), CAST(N'2022-12-04' AS Date), 2)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Bill] ON 

INSERT [dbo].[Bill] ([bill_id], [booking_id], [total_amount], [payment_status], [payment_method], [date]) VALUES (1, 1, 1500, 0, N'0', NULL)
SET IDENTITY_INSERT [dbo].[Bill] OFF
GO
SET IDENTITY_INSERT [dbo].[BillDetail] ON 

INSERT [dbo].[BillDetail] ([bdetail_id], [bill_id]) VALUES (1, 1)
SET IDENTITY_INSERT [dbo].[BillDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image]) VALUES (1, N'Food and Supplies', N'We offer a wide range of bird food, supplements, and other supplies to ensure that your pet receives the best possible nutrition. Our knowledgeable staff can help you choose the right food and supplements for your bird''s specific needs.', 1, 200, N'bird-food')
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image]) VALUES (2, N'Boarding', N'When you''re away, our bird boarding services provide a safe and comfortable environment for your pet. Our facilities are staffed 24/7, and our experienced caretakers will provide your bird with the care and attention they need.', 1, 200, N'bird-boarding')
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image]) VALUES (3, N'Grooming', N'We offer bird grooming services to keep your pet looking and feeling their best. Our team of experts can help with beak and nail trimming, wing clipping, and feather maintenance.', 1, 200, N'bird-grooming')
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image]) VALUES (4, N'Training', N'Our bird training services can help your pet develop important life skills and improve their behavior. We offer basic training, tricks, and socialization to help your bird reach their full potential.', 1, 200, N'bird-training')
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image]) VALUES (5, N'Play areas', N'Our spacious bird play areas provide plenty of room for your pet to fly and play. Our play areas are designed to keep your bird safe and entertained.', 1, 200, N'bird-play-area')
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image]) VALUES (6, N'Enrichment activities', N'Our team of experts can create bird enrichment activities to keep your pet entertained and stimulated. Our activities range from bird puzzles and games to training sessions and interactive play.', 1, 200, N'bird-wallpaper2')
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image]) VALUES (7, N'Photography', N'Taking photographs of birds while they are staying at the accommodation to document their stay', 1, 200, N'bird-photography')
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image]) VALUES (8, N'Bird Rescue and Rehabilitation Centers', N'Bird rescue and rehabilitation centers provide medical care and rehabilitation services for injured or sick birds. They also offer temporary accommodations for birds that cannot be released back into the wild due to their injuries.', 1, 200, N'bird-rescue')
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image]) VALUES (9, N'Different name for service', N'Different thing', 1, 999, NULL)
INSERT [dbo].[Service] ([service_id], [name], [description], [status], [price], [image]) VALUES (10, N'Test Service', N'some service for bird', 0, 150, NULL)
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[BookingDetail] ON 

INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price]) VALUES (1, 1, 1, 200)
INSERT [dbo].[BookingDetail] ([bdetail_id], [booking_id], [service_id], [booked_price]) VALUES (2, 1, 2, 200)
SET IDENTITY_INSERT [dbo].[BookingDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([review_id], [user_id], [booking_id], [rating], [comment]) VALUES (1, 2, 1, 4.5, N'They bring for my bird the best service in the world!!')
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyReport] ON 

INSERT [dbo].[DailyReport] ([dreport_id], [bdetail_id], [date], [service_report_image], [service_report_text]) VALUES (1, 1, CAST(N'2023-02-15' AS Date), N'img1', N'text1')
INSERT [dbo].[DailyReport] ([dreport_id], [bdetail_id], [date], [service_report_image], [service_report_text]) VALUES (2, 2, CAST(N'2023-02-15' AS Date), N'img2', N'text2')
INSERT [dbo].[DailyReport] ([dreport_id], [bdetail_id], [date], [service_report_image], [service_report_text]) VALUES (3, 1, CAST(N'2023-02-16' AS Date), N'img3', N'text3')
INSERT [dbo].[DailyReport] ([dreport_id], [bdetail_id], [date], [service_report_image], [service_report_text]) VALUES (5, 2, CAST(N'2023-02-16' AS Date), N'img4', N'text4')
INSERT [dbo].[DailyReport] ([dreport_id], [bdetail_id], [date], [service_report_image], [service_report_text]) VALUES (6, 1, CAST(N'2023-02-17' AS Date), N'img5', N'text5')
INSERT [dbo].[DailyReport] ([dreport_id], [bdetail_id], [date], [service_report_image], [service_report_text]) VALUES (7, 2, CAST(N'2023-02-17' AS Date), N'img6', N'text6')
SET IDENTITY_INSERT [dbo].[DailyReport] OFF
GO
SET IDENTITY_INSERT [dbo].[DailyFeedback] ON 

INSERT [dbo].[DailyFeedback] ([dfeedback_id], [dreport_id], [content]) VALUES (1, 1, N'good')
INSERT [dbo].[DailyFeedback] ([dfeedback_id], [dreport_id], [content]) VALUES (2, 2, N'ok')
INSERT [dbo].[DailyFeedback] ([dfeedback_id], [dreport_id], [content]) VALUES (3, 3, N'good service')
SET IDENTITY_INSERT [dbo].[DailyFeedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([post_id], [title], [content], [reference]) VALUES (1, N'Title1', N'Content1', N'Ref1')
INSERT [dbo].[Post] ([post_id], [title], [content], [reference]) VALUES (2, N'Title2', N'Content2', N'Ref2')
INSERT [dbo].[Post] ([post_id], [title], [content], [reference]) VALUES (3, N'Title3', N'Content3', N'Ref3')
SET IDENTITY_INSERT [dbo].[Post] OFF
GO
