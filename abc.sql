USE [ProjectPRJ321]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/20/2021 3:49:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[userid] [int] NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[isSeller] [bit] NULL,
	[isAdmin] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/20/2021 3:49:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[cateID] [int] NOT NULL,
	[cname] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[cateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 7/20/2021 3:49:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [nvarchar](max) NULL,
	[price] [float] NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[cateID] [int] NULL,
	[sellerID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Account] ([userid], [username], [password], [isSeller], [isAdmin]) VALUES (1, N'mra', N'123', 1, 0)
INSERT [dbo].[Account] ([userid], [username], [password], [isSeller], [isAdmin]) VALUES (2, N'mrb', N'1234', 1, 0)
INSERT [dbo].[Account] ([userid], [username], [password], [isSeller], [isAdmin]) VALUES (3, N'mrc', N'1234', 1, 0)
INSERT [dbo].[Account] ([userid], [username], [password], [isSeller], [isAdmin]) VALUES (4, N'mrd', N'12345', 1, 0)
INSERT [dbo].[Account] ([userid], [username], [password], [isSeller], [isAdmin]) VALUES (5, N'admin', N'1', 0, 1)
INSERT [dbo].[Account] ([userid], [username], [password], [isSeller], [isAdmin]) VALUES (6, N'customer', N'123', 0, 0)
INSERT [dbo].[Account] ([userid], [username], [password], [isSeller], [isAdmin]) VALUES (7, N'mrf', N'123', 0, 0)
INSERT [dbo].[Account] ([userid], [username], [password], [isSeller], [isAdmin]) VALUES (1, N'mrt', N'123', 0, 0)
INSERT [dbo].[Account] ([userid], [username], [password], [isSeller], [isAdmin]) VALUES (1, N'mrk', N'123', 0, 0)
INSERT [dbo].[Account] ([userid], [username], [password], [isSeller], [isAdmin]) VALUES (1, N'mra10', N'123', 0, 0)
INSERT [dbo].[Category] ([cateID], [cname]) VALUES (1, N'Vòng Tay Phật')
INSERT [dbo].[Category] ([cateID], [cname]) VALUES (2, N'Vòng Tay Tì Hưu')
INSERT [dbo].[Category] ([cateID], [cname]) VALUES (3, N'Vòng Tay Handmade')
INSERT [dbo].[Category] ([cateID], [cname]) VALUES (4, N'Vòng Tay Kim Loại')
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (1, N'Vòng tay Phật VTP0016', N'https://product.hstatic.net/1000213320/product/_ntm0386_d23206d859c4452a96f4f7337495cf16_large.jpg', 345, N'Vòng tay Phật VTP0016', N'Chất liệu charm: Hợp kim mạ màu chống gỉ', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (4, N'Vòng tay Phật Helios Combo Budda', N'https://product.hstatic.net/1000213320/product/img_3554_copy_grande_aadae72da655461fb23e44f2c38fd16c_large.jpg', 295, N'Vòng tay Phật Helios Combo Budda', N'Chất liệu: đá hỏa sơn mix đá mắt hổ , size đá 8li 
', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (5, N'Vòng tay Phật Helios Combo Phật đen', N'https://product.hstatic.net/1000213320/product/img_1800_copy_8c93c1557b4d4a12aef7563357dae06e_large.jpg', 230, N'Vòng tay Phật Helios Combo Phật đen', N'Đá : Hỏa sơn size 8li ', 1, 1)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (6, N'Vòng Tỳ Hưu Helios Tỳ Hưu Trầm Hương', N'https://product.hstatic.net/1000213320/product/_ntm0564_66569c8e2a7e484cb15155d9f6804523_large.jpg', 785, N'Vòng Tỳ Hưu Helios Tỳ Hưu Trầm Hương VTH0009', N'Chất liệu: Trầm hương tự nhiên nấu size 10 li', 2, 2)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (7, N'Vòng tay Handame Helios Green Diamond', N'https://product.hstatic.net/1000213320/product/diamond_green_phoenix_c817d674fad5456a961cdca7313b53ed_large.jpg', 395, N'Vòng tay Handame Helios Green Diamond Phoenix VTHM0023', N'Chất liệu: Đá Thiên Thanh size 10 li ', 3, 3)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (8, N'Vòng tay Handame Helios Ruby Queen', N'https://product.hstatic.net/1000213320/product/141983339_1099517323898453_7375275088272123026_n__1__8ffe9a1e80484a8b8b4cd1837b526bbc_large.jpg', 345, N'Vòng tay Handame Helios Ruby Queen - Coral VTHM0008', N'Charm: hợp kim titan trắng mạ màu chống gỉ, đá cz đính trên charm', 3, 3)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (9, N'Vòng tay Handame Helios Skull ', N'https://product.hstatic.net/1000213320/product/ntm_2119_c7ade43c62d640c1841fa00546651b18_large.jpg', 295, N'Vòng tay Handame Helios Skull Perez V2', N'Charm: Hợp kim titan trắng mạ màu chống gỉ', 3, 3)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (11, N'Vòng tay Handmade Helios Diamond Thạch anh tóc', N'https://product.hstatic.net/1000213320/product/img_2333-2_3ec35b1beaa94429957fa51f696f43fc_large.jpg', 445, N'Vòng tay Handmade Helios Diamond Thạch anh tóc', N'Chất liệu:thạch anh tóc 8ly nhiều màu mix cùng đá obsidian đen bóng nổi bật.', 3, 3)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (12, N'Vòng tay kim loại Helios Đan 1341', N'https://product.hstatic.net/1000213320/product/dan__2__13de2b20f62d4c1d87fbc318b73a3bdd_large.jpg', 325, N'Vòng tay kim loại Helios Đan 1341', N'Đây có lẽ là phong cách cao cấp nhất của vòng đeo tay nam. Chúng là vật dụng khá liên quan và phù hợp với suit, sơ mi, cà vạt. Sự đa dạng về kiểu dáng là vô hạn nhưng tính hiệu quả của chúng thì như nhau: là phát ngôn táo bạo cho tính cách trên cổ tay người đàn ông – những chiếc vòng lớn, trơn và sáng luôn thể hiện sự cứng rắn, mạnh mẽ, nam tính.', 4, 4)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (13, N'Vòng tay kim loại Helios Hạc Mây', N'https://product.hstatic.net/1000213320/product/hac_may__1__a4e547b53c5244c18b54fdb9fd4b094b_large.jpg', 295, N'Vòng tay kim loại Helios Hạc Mây VTKL0099', N'Đây có lẽ là phong cách cao cấp nhất của vòng đeo tay nam. Chúng là vật dụng khá liên quan và phù hợp với suit, sơ mi, cà vạt. Sự đa dạng về kiểu dáng là vô hạn nhưng tính hiệu quả của chúng thì như nhau: là phát ngôn táo bạo cho tính cách trên cổ tay người đàn ông – những chiếc vòng lớn, trơn và sáng luôn thể hiện sự cứng rắn, mạnh mẽ, nam tính.', 4, 4)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (14, N'Vòng tay kim loại Helios Smile', N'https://product.hstatic.net/1000213320/product/smile__1__f8141dac361a4649b2ccbcdcbf66021f_large.jpg', 295, N'Vòng tay kim loại Helios Smile VTKL0098', N'Đây có lẽ là phong cách cao cấp nhất của vòng đeo tay nam. Chúng là vật dụng khá liên quan và phù hợp với suit, sơ mi, cà vạt. Sự đa dạng về kiểu dáng là vô hạn nhưng tính hiệu quả của chúng thì như nhau: là phát ngôn táo bạo cho tính cách trên cổ tay người đàn ông – những chiếc vòng lớn, trơn và sáng luôn thể hiện sự cứng rắn, mạnh mẽ, nam tính.', 4, 4)
INSERT [dbo].[Product] ([id], [name], [image], [price], [title], [description], [cateID], [sellerID]) VALUES (15, N'Vòng tay kim loại Helios Lock', N'https://product.hstatic.net/1000213320/product/12_3c03d53348704ce28c47a2c259b8ddcf_large.jpg', 295, N'Vòng tay kim loại Helios Lock V2 VTKL0097', N'Đây có lẽ là phong cách cao cấp nhất của vòng đeo tay nam. Chúng là vật dụng khá liên quan và phù hợp với suit, sơ mi, cà vạt. Sự đa dạng về kiểu dáng là vô hạn nhưng tính hiệu quả của chúng thì như nhau: là phát ngôn táo bạo cho tính cách trên cổ tay người đàn ông – những chiếc vòng lớn, trơn và sáng luôn thể hiện sự cứng rắn, mạnh mẽ, nam tính.', 4, 4)
