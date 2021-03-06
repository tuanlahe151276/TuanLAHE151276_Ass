USE [Assignment_PRJ]
GO
/****** Object:  ForeignKey [FK__Order__cusID__412EB0B6]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK__Order__cusID__412EB0B6]
GO
/****** Object:  ForeignKey [FK__OrderDeta__order__3B75D760]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__order__3B75D760]
GO
/****** Object:  ForeignKey [FK__OrderDeta__proID__3C69FB99]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__proID__3C69FB99]
GO
/****** Object:  ForeignKey [FK__product__cateID__117F9D94]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__cateID__117F9D94]
GO
/****** Object:  ForeignKey [FK__product__sell_ID__1273C1CD]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__sell_ID__1273C1CD]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__order__3B75D760]
GO
ALTER TABLE [dbo].[OrderDetail] DROP CONSTRAINT [FK__OrderDeta__proID__3C69FB99]
GO
DROP TABLE [dbo].[OrderDetail]
GO
/****** Object:  Table [dbo].[product]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__cateID__117F9D94]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FK__product__sell_ID__1273C1CD]
GO
DROP TABLE [dbo].[product]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[Order] DROP CONSTRAINT [FK__Order__cusID__412EB0B6]
GO
DROP TABLE [dbo].[Order]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/23/2022 17:36:03 ******/
DROP TABLE [dbo].[Account]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 03/23/2022 17:36:03 ******/
DROP TABLE [dbo].[Category]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/23/2022 17:36:03 ******/
DROP TABLE [dbo].[Customer]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 03/23/2022 17:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CusID] [int] IDENTITY(1,1) NOT NULL,
	[Cusname] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[CusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (1, N'ss', N'1111', N'asdsdsd')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (2, N'www', N'444', N'ddfff')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (3, N'tuan', N'1234567', N'nha tao')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (4, N'', N'', N'')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (5, N'tuan', N'1234', N'sdsds')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (6, N'anhtuan', N'6533', N'sdddd')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (7, N'acxx', N'22222', N'sddd')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (8, N'anhtuan', N'33333333', N'dddddd')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (9, N'aa', N'ss', N'ccc')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (10, N'', N'', N'')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (11, N'aaa', N'22222', N'2222')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (12, N'', N'', N'')
INSERT [dbo].[Customer] ([CusID], [Cusname], [Phone], [Address]) VALUES (13, N'aaaaaaa', N'2222222222', N'sfdghdsdfwdgf')
SET IDENTITY_INSERT [dbo].[Customer] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 03/23/2022 17:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cid] [int] NOT NULL,
	[cname] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([cid], [cname]) VALUES (1, N'Sơn phủ ngoại thất')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (2, N'Sơn phủ nội thất')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (3, N'Sơn chuyên dụng')
INSERT [dbo].[Category] ([cid], [cname]) VALUES (4, N'Sơn Chống Thấm')
/****** Object:  Table [dbo].[Account]    Script Date: 03/23/2022 17:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[uID] [int] IDENTITY(1,1) NOT NULL,
	[user] [varchar](255) NULL,
	[pass] [varchar](255) NULL,
	[isSell] [int] NULL,
	[isAdmin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[uID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (1, N'Adam', N'12345', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (23, N'Katell', N'12345', 1, 1)
INSERT [dbo].[Account] ([uID], [user], [pass], [isSell], [isAdmin]) VALUES (45, N'tuan', N'123456', 1, 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Order]    Script Date: 03/23/2022 17:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[cusID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (4, 2, CAST(0xB9000B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (5, 3, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (6, 4, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (7, 5, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (8, 6, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (9, 7, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (10, 8, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (11, 9, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (12, 10, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (13, 11, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (14, 12, CAST(0xBC430B00 AS Date))
INSERT [dbo].[Order] ([OrderId], [cusID], [OrderDate]) VALUES (15, 13, CAST(0xBC430B00 AS Date))
SET IDENTITY_INSERT [dbo].[Order] OFF
/****** Object:  Table [dbo].[product]    Script Date: 03/23/2022 17:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[price] [money] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sell_ID] [int] NULL,
 CONSTRAINT [PK] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[product] ON
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (22, N'ALEX PRO', N'https://sonalex.vn/uploads/shops/2017_07/pro-5l.jpg', 60.0000, N'ALEX PRO', N'ALEX PRO là sơn nước cao cấp ngoài trời với bề mặt sơn bóng, mang lại vẻ đẹp sang trọng cho ngôi nhà. Sản phẩm sử dụng công nghệ tiên tiến, không chỉ tạo lớp bảo vệ hoàn hảo cho ngôi nhà của bạn trước các điều kiện thời tiết khắc nhiệt mà còn trước hơi ẩm và nước từ bên trong tường. Ngoài ra ALEX PRO là sản phẩm bảo vệ màng sơn bền lâu hơn từ khả năng chống tia UV và bạc màu.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (23, N'TOMAT 5IN1', N'https://sonalex.vn/uploads/shops/2017_07/tomat-5in11_1.jpg', 70.0000, N'TOMAT 5IN1', N'TOMAT 5IN1 sơn nước ngoài trời có chất lượng và độ bền cao, dùng trang trí và bảo vệ mặt tường ngoài trời. TOMAT 5IN1 được sản xuất theo công nghệ tiên tiến, cho màu sắc đa dạng, lâu phai, có độ che lấp cao và dễ thi công', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (25, N'ALEX LAU CHÙI', N'https://sonalex.vn/uploads/shops/2017_07/lau-chui-1.jpg', 60.0000, N'ALEX LAU CHÙI', N'ALEX LAU CHÙI là sơn nước nội thất cao cấp giúp giữ tường nhà bạn sạch đẹp hơn. Vết bẩn dễ dàng được lau chùi mà không ảnh hưởng đến màng sơn luôn đẹp như mới. Với ALEX LAU CHÙI con bạn thỏa thích khám phá, vui chơi, phát triển mà tường nhà bạn vẫn luôn tinh tươm sạch đẹp.', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (26, N'TOMAT ĐỎ', N'https://sonalex.vn/uploads/shops/2017_07/tomat-do-5-3.jpg', 60.0000, N'TOMAT ĐỎ', N'TOMAT ĐỎ là loại sơn nước được dùng để trang trí và bảo vệ cho các tường nội thất', 2, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (27, N'ALEX PREVENT', N'https://sonalex.vn/uploads/shops/2017_07/ckdn-4.jpg', 60.0000, N'ALEX PREVENT', N'ALEX PREVENT là loại chống thấm xi măng dạng lỏng, hệ nước được tổng hợp từ Acrylotrile và Acloxiloxan. ALEX prevent có tác dụng ngăn chặn sự thấm nước từ trên xuống nhưng bề mặt vẫn có thể bốc hơi nước dễ dàng', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (28, N'CHỐNG KIỀM ALEX 8000', N'https://sonalex.vn/uploads/shops/2017_07/lon-5-lit-1.jpg', 60.0000, N'CHỐNG KIỀM ALEX 8000', N'SƠN LÓT CHỐNG KIỀM ALEX 8000 là loại sơn lót 100% nhựa acrylic gốc nước giúp ngăn chặn sự kiềm hóa một cách hoàn hảo, tăng cường khả năng chống thấm, tạo độ bám dính cao, đồng thời giữ cho màu sắc của lớp sơn hoàn thiện được bền lâu.', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (29, N'TOMAT CHỐNG KIỀM 6000', N'https://sonalex.vn/uploads/shops/2017_07/ck-6000-3.jpg', 150.0000, N'TOMAT CHỐNG KIỀM 6000', N'SƠN LÓT CHỐNG KIỀM TOMAT 6000 là loại sơn lót 100% nhựa acrylic gốc nước giúp ngăn chặn sự kiềm hóa một cách hoàn hảo, tăng cường khả năng chống thấm, tạo độ bám dính cao, đồng thời giữ cho màu sắc của lớp sơn hoàn thiện được bền lâu.', 3, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (30, N'ALEX CHỐNG KIỀM NỘI THẤT', N'https://sonalex.vn/uploads/shops/2017_07/lot-1.jpg', 60.0000, N'ALEX CHỐNG KIỀM NỘI THẤT', N'SƠN LÓT CHỐNG KIỀM NỘI THẤT là loại sơn lót 100% nhựa acrylic gốc nước giúp ngăn chặn sự kiềm hóa một cách hoàn hảo, tăng cường khả năng chống thấm, tạo độ bám dính cao, đồng thời giữ cho màu sắc của lớp sơn hoàn thiện được bền lâu.', 1, 1)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (31, N'ALEX ULTRA WHITE', N'https://sonalex.vn/uploads/shops/2017_07/51-3.jpg', 250.0000, N'ALEX ULTRA WHITE', N'ALEX ULTRA WHITE sơn nước siêu trắng nội thất có chất lượng & độ bền cao, dùng trang trí và bảo vệ các bề mặt tường nội thất. ALEX ULTRA WHITE siêu trắng với công thức chứa bột than siêu trắng được sản xuất theo công nghệ tiên tiến, cho độ che lấp cao và dễ thi công.', 2, 23)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (32, N'ALEX ULTRA PRIMER EX', N'https://sonalex.vn/uploads/shops/2017_07/5-lit-3.jpg', 60.0000, N'ALEX ULTRA PRIMER EX', N'ALEX ULTRA PRIMER EX là loại sơn lót chống kiềm Acrylic gốc nước, chất lượng siêu việt, thân thiện với môi trường và người sử dụng, áp dụng công nghệ NANO- EFLO BLOCK khiến màng sơn liên kết cực kỳ chặt chẽ, tạo thành màng chẵn hữu hiệu đối với hóa chất và độ ẩm dùng sơn các bề mặt tường ngoài trời.', 1, 23)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (33, N'ALEX ULTRA PRIMER IN', N'https://sonalex.vn/uploads/shops/2017_07/5-3.jpg', 150.0000, N'ALEX ULTRA PRIMER IN', N'ALEX ULTRA PRIMER IN chống kiềm nội thất là loại sơn lót 100% nhựa acrylic gốc nước giúp ngăn chặn sự kiềm hóa một cách hoàn hảo, tăng cường khả năng chống thấm, tạo độ bám dính cao, đồng thời giữ cho màu sắc của lớp sơn hoàn thiện được bền lâu.', 3, 23)
INSERT [dbo].[product] ([id], [name], [image], [price], [title], [description], [cateID], [sell_ID]) VALUES (41, N'SonDong a', N'https://alex.com.vn/uploads/thumbs/alex%20prevent_20210608100011620.jpg', 444.0000, N'Sondonga', N'Alex Prevent là loại sơn chống thấm hệ trộn xi măng dạng lỏng, được tổng hợp từ Acrylotrile và Acloxiloxan. ALEX prevent có tác dụng ngăn chặn sự thấm nước từ trên xuống nhưng bề mặt vẫn có thể bốc hơi nước dễ dàng.', 1, 45)
SET IDENTITY_INSERT [dbo].[product] OFF
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 03/23/2022 17:36:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[orderID] [int] NOT NULL,
	[proID] [int] NOT NULL,
	[quantity] [int] NOT NULL
) ON [PRIMARY]
GO
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (5, 22, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (10, 22, 2)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (11, 22, 2)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (11, 23, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (12, 23, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (13, 22, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (13, 23, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (14, 22, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (15, 22, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (15, 23, 4)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (12, 22, 2)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (14, 23, 3)
INSERT [dbo].[OrderDetail] ([orderID], [proID], [quantity]) VALUES (15, 26, 1)
/****** Object:  ForeignKey [FK__Order__cusID__412EB0B6]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([cusID])
REFERENCES [dbo].[Customer] ([CusID])
GO
/****** Object:  ForeignKey [FK__OrderDeta__order__3B75D760]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([orderID])
REFERENCES [dbo].[Order] ([OrderId])
GO
/****** Object:  ForeignKey [FK__OrderDeta__proID__3C69FB99]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD FOREIGN KEY([proID])
REFERENCES [dbo].[product] ([id])
GO
/****** Object:  ForeignKey [FK__product__cateID__117F9D94]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([cateID])
REFERENCES [dbo].[Category] ([cid])
GO
/****** Object:  ForeignKey [FK__product__sell_ID__1273C1CD]    Script Date: 03/23/2022 17:36:03 ******/
ALTER TABLE [dbo].[product]  WITH CHECK ADD FOREIGN KEY([sell_ID])
REFERENCES [dbo].[Account] ([uID])
GO
