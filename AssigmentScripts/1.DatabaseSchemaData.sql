use assigmenttest
go
/****** Object:  Table [dbo].[Categories]    Script Date: 23/02/2023 10:47:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 23/02/2023 10:47:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[order_id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_date] [datetime] NOT NULL,
	[customer_name] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductOrders]    Script Date: 23/02/2023 10:47:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductOrders](
	[product_order_id] [bigint] IDENTITY(1,1) NOT NULL,
	[order_id] [bigint] NOT NULL,
	[product_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[product_order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 23/02/2023 10:47:03 am ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[prodcut_id] [int] IDENTITY(1,1) NOT NULL,
	[product_name] [nvarchar](500) NOT NULL,
	[category_id] [int] NOT NULL,
	[price] [decimal](18, 2) NOT NULL,
	[description] [nvarchar](1000) NULL,
	[image_url] [nvarchar](255) NULL,
	[date_added] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[prodcut_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 
GO
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (1, N'Bikes')
GO
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (2, N'Components')
GO
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (3, N'Clothing')
GO
INSERT [dbo].[Categories] ([category_id], [category_name]) VALUES (4, N'Accessories')
GO
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (1, CAST(N'2019-01-07T00:00:00.000' AS DateTime), N'Ken Sánchez')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (2, CAST(N'2018-01-24T00:00:00.000' AS DateTime), N'Terri Duffy')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (3, CAST(N'2017-11-04T00:00:00.000' AS DateTime), N'Roberto Tamburello')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (4, CAST(N'2017-11-28T00:00:00.000' AS DateTime), N'Rob Walters')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (5, CAST(N'2017-12-30T00:00:00.000' AS DateTime), N'Gail Erickson')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (6, CAST(N'2023-12-16T00:00:00.000' AS DateTime), N'Jossef Goldberg')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (7, CAST(N'2019-02-01T00:00:00.000' AS DateTime), N'Dylan Miller')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (8, CAST(N'2018-12-22T00:00:00.000' AS DateTime), N'Diane Margheim')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (9, CAST(N'2019-01-09T00:00:00.000' AS DateTime), N'Gigi Matthew')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (10, CAST(N'2019-04-26T00:00:00.000' AS DateTime), N'Michael Raheem')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (11, CAST(N'2020-11-28T00:00:00.000' AS DateTime), N'Ovidiu Cracium')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (12, CAST(N'2017-12-04T00:00:00.000' AS DateTime), N'Thierry D''Hers')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (13, CAST(N'2020-12-16T00:00:00.000' AS DateTime), N'Janice Galvin')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (14, CAST(N'2020-12-23T00:00:00.000' AS DateTime), N'Michael Sullivan')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (15, CAST(N'2021-01-11T00:00:00.000' AS DateTime), N'Sharon Salavaria')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (16, CAST(N'2017-12-13T00:00:00.000' AS DateTime), N'David Bradley')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (17, CAST(N'2017-01-19T00:00:00.000' AS DateTime), N'Kevin Brown')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (18, CAST(N'2021-01-31T00:00:00.000' AS DateTime), N'John Wood')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (19, CAST(N'2021-02-07T00:00:00.000' AS DateTime), N'Mary Dempsey')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (20, CAST(N'2020-12-31T00:00:00.000' AS DateTime), N'Wanida Benshoof')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (21, CAST(N'2019-02-23T00:00:00.000' AS DateTime), N'Terry Eminhizer')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (22, CAST(N'2018-12-05T00:00:00.000' AS DateTime), N'Sariya Harnpadoungsataya')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (23, CAST(N'2019-01-05T00:00:00.000' AS DateTime), N'Mary Gibson')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (24, CAST(N'2019-01-11T00:00:00.000' AS DateTime), N'Jill Williams')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (25, CAST(N'2019-01-27T00:00:00.000' AS DateTime), N'James Hamilton')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (26, CAST(N'2018-11-24T00:00:00.000' AS DateTime), N'Peter Krebs')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (27, CAST(N'2018-02-20T00:00:00.000' AS DateTime), N'Jo Brown')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (28, CAST(N'2016-06-23T00:00:00.000' AS DateTime), N'Guy Gilbert')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (29, CAST(N'2019-01-16T00:00:00.000' AS DateTime), N'Mark McArthur')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (30, CAST(N'2019-01-22T00:00:00.000' AS DateTime), N'Britta Simon')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (31, CAST(N'2018-12-28T00:00:00.000' AS DateTime), N'Margie Shoop')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (32, CAST(N'2018-12-22T00:00:00.000' AS DateTime), N'Rebecca Laszlo')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (33, CAST(N'2018-12-10T00:00:00.000' AS DateTime), N'Annik Stahl')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (34, CAST(N'2019-02-09T00:00:00.000' AS DateTime), N'Suchitra Mohan')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (35, CAST(N'2019-02-01T00:00:00.000' AS DateTime), N'Brandon Heidepriem')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (36, CAST(N'2019-02-03T00:00:00.000' AS DateTime), N'Jose Lugo')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (37, CAST(N'2019-02-28T00:00:00.000' AS DateTime), N'Chris Okelberry')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (38, CAST(N'2020-01-09T00:00:00.000' AS DateTime), N'Kim Abercrombie')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (39, CAST(N'2020-01-29T00:00:00.000' AS DateTime), N'Ed Dudenhoefer')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (40, CAST(N'2017-12-19T00:00:00.000' AS DateTime), N'JoLynn Dobney')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (41, CAST(N'2019-01-14T00:00:00.000' AS DateTime), N'Bryan Baker')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (42, CAST(N'2018-12-20T00:00:00.000' AS DateTime), N'James Kramer')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (43, CAST(N'2018-12-26T00:00:00.000' AS DateTime), N'Nancy Anderson')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (44, CAST(N'2018-12-01T00:00:00.000' AS DateTime), N'Simon Rapier')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (45, CAST(N'2019-02-19T00:00:00.000' AS DateTime), N'Thomas Michaels')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (46, CAST(N'2019-02-01T00:00:00.000' AS DateTime), N'Eugene Kogan')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (47, CAST(N'2019-02-15T00:00:00.000' AS DateTime), N'Andrew Hill')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (48, CAST(N'2017-12-30T00:00:00.000' AS DateTime), N'Ruth Ellerbrock')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (49, CAST(N'2023-11-29T00:00:00.000' AS DateTime), N'Barry Johnson')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (50, CAST(N'2018-01-26T00:00:00.000' AS DateTime), N'Sidney Higa')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (51, CAST(N'2018-02-13T00:00:00.000' AS DateTime), N'Jeffrey Ford')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (52, CAST(N'2024-01-31T00:00:00.000' AS DateTime), N'Doris Hartwig')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (53, CAST(N'2018-03-21T00:00:00.000' AS DateTime), N'Diane Glimp')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (54, CAST(N'2019-12-25T00:00:00.000' AS DateTime), N'Bonnie Kearney')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (55, CAST(N'2023-12-31T00:00:00.000' AS DateTime), N'Taylor Maxwell')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (56, CAST(N'2019-01-29T00:00:00.000' AS DateTime), N'Denise Smith')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (57, CAST(N'2019-02-16T00:00:00.000' AS DateTime), N'Frank Miller')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (58, CAST(N'2018-11-28T00:00:00.000' AS DateTime), N'Kendall Keil')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (59, CAST(N'2018-12-17T00:00:00.000' AS DateTime), N'Bob Hohman')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (60, CAST(N'2019-01-04T00:00:00.000' AS DateTime), N'Pete Male')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (61, CAST(N'2019-01-11T00:00:00.000' AS DateTime), N'Diane Tibbott')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (62, CAST(N'2024-02-07T00:00:00.000' AS DateTime), N'John Campbell')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (63, CAST(N'2020-01-22T00:00:00.000' AS DateTime), N'Maciej Dusza')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (64, CAST(N'2020-02-16T00:00:00.000' AS DateTime), N'Michael Zwilling')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (65, CAST(N'2020-02-16T00:00:00.000' AS DateTime), N'Randy Reeves')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (66, CAST(N'2019-12-15T00:00:00.000' AS DateTime), N'Karan Khanna')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (67, CAST(N'2019-02-26T00:00:00.000' AS DateTime), N'Jay Adams')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (68, CAST(N'2019-11-26T00:00:00.000' AS DateTime), N'Charles Fitzgerald')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (69, CAST(N'2019-02-08T00:00:00.000' AS DateTime), N'Steve Masters')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (70, CAST(N'2018-12-08T00:00:00.000' AS DateTime), N'David Ortiz')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (71, CAST(N'2019-02-08T00:00:00.000' AS DateTime), N'Michael Ray')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (72, CAST(N'2018-11-24T00:00:00.000' AS DateTime), N'Steven Selikoff')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (73, CAST(N'2018-12-12T00:00:00.000' AS DateTime), N'Carole Poland')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (74, CAST(N'2018-12-31T00:00:00.000' AS DateTime), N'Bjorn Rettig')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (75, CAST(N'2019-01-19T00:00:00.000' AS DateTime), N'Michiko Osada')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (76, CAST(N'2019-02-05T00:00:00.000' AS DateTime), N'Carol Philips')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (77, CAST(N'2019-02-24T00:00:00.000' AS DateTime), N'Merav Netz')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (78, CAST(N'2018-12-08T00:00:00.000' AS DateTime), N'Reuben D''sa')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (79, CAST(N'2020-01-17T00:00:00.000' AS DateTime), N'Eric Brown')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (80, CAST(N'2020-01-10T00:00:00.000' AS DateTime), N'Sandeep Kaliyath')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (81, CAST(N'2019-12-22T00:00:00.000' AS DateTime), N'Mihail Frintu')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (82, CAST(N'2020-02-24T00:00:00.000' AS DateTime), N'Jack Creasey')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (83, CAST(N'2020-02-05T00:00:00.000' AS DateTime), N'Patrick Cook')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (84, CAST(N'2020-01-29T00:00:00.000' AS DateTime), N'Frank Martinez')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (85, CAST(N'2019-12-04T00:00:00.000' AS DateTime), N'Brian Goldstein')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (86, CAST(N'2018-12-29T00:00:00.000' AS DateTime), N'Ryan Cornelsen')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (87, CAST(N'2018-12-15T00:00:00.000' AS DateTime), N'Cristian Petculescu')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (88, CAST(N'2019-12-11T00:00:00.000' AS DateTime), N'Betsy Stadick')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (89, CAST(N'2020-01-25T00:00:00.000' AS DateTime), N'Patrick Wedge')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (90, CAST(N'2020-02-13T00:00:00.000' AS DateTime), N'Danielle Tiedt')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (91, CAST(N'2020-01-05T00:00:00.000' AS DateTime), N'Kimberly Zimmerman')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (92, CAST(N'2020-03-03T00:00:00.000' AS DateTime), N'Tom Vande Velde')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (93, CAST(N'2018-12-20T00:00:00.000' AS DateTime), N'Kok-Ho Loh')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (94, CAST(N'2018-12-05T00:00:00.000' AS DateTime), N'Russell Hunter')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (95, CAST(N'2018-12-12T00:00:00.000' AS DateTime), N'Jim Scardelis')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (96, CAST(N'2019-02-23T00:00:00.000' AS DateTime), N'Elizabeth Keyser')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (97, CAST(N'2019-02-03T00:00:00.000' AS DateTime), N'Mandar Samant')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (98, CAST(N'2019-02-04T00:00:00.000' AS DateTime), N'Sameer Tejani')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (99, CAST(N'2018-12-30T00:00:00.000' AS DateTime), N'Nuan Yu')
GO
INSERT [dbo].[Orders] ([order_id], [order_date], [customer_name]) VALUES (100, CAST(N'2019-01-05T00:00:00.000' AS DateTime), N'Lolan Song')
GO
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductOrders] ON 
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (1, 14, 13)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (2, 74, 17)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (3, 96, 10)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (4, 45, 12)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (5, 73, 7)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (6, 78, 4)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (7, 98, 5)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (8, 36, 4)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (9, 70, 20)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (10, 50, 7)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (11, 18, 3)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (12, 31, 5)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (13, 45, 16)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (14, 64, 1)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (15, 58, 7)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (16, 96, 7)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (17, 58, 19)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (18, 2, 13)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (19, 89, 17)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (20, 69, 3)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (21, 56, 8)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (22, 73, 3)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (23, 60, 9)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (24, 83, 1)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (25, 65, 1)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (26, 20, 1)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (27, 57, 8)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (28, 71, 11)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (29, 13, 16)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (30, 36, 8)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (31, 61, 8)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (32, 44, 11)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (33, 49, 2)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (34, 83, 12)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (35, 6, 15)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (36, 43, 13)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (37, 89, 15)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (38, 84, 9)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (39, 45, 2)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (40, 65, 7)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (41, 65, 14)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (42, 54, 7)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (43, 21, 5)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (44, 13, 18)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (45, 10, 16)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (46, 13, 18)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (47, 80, 7)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (48, 45, 2)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (49, 6, 12)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (50, 26, 2)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (51, 16, 10)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (52, 51, 16)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (53, 29, 10)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (54, 13, 17)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (55, 31, 15)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (56, 87, 18)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (57, 50, 15)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (58, 22, 18)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (59, 76, 19)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (60, 58, 17)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (61, 90, 15)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (62, 34, 20)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (63, 80, 8)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (64, 59, 12)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (65, 55, 19)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (66, 71, 14)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (67, 23, 4)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (68, 26, 19)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (69, 88, 11)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (70, 87, 7)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (71, 97, 18)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (72, 56, 8)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (73, 56, 3)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (74, 83, 8)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (75, 63, 19)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (76, 28, 8)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (77, 79, 13)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (78, 8, 16)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (79, 3, 2)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (80, 81, 8)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (81, 72, 15)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (82, 60, 2)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (83, 56, 6)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (84, 61, 18)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (85, 85, 19)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (86, 79, 11)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (87, 73, 16)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (88, 27, 7)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (89, 61, 13)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (90, 24, 20)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (91, 69, 20)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (92, 55, 4)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (93, 98, 7)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (94, 63, 12)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (95, 94, 12)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (96, 19, 15)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (97, 17, 8)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (98, 90, 2)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (99, 7, 8)
GO
INSERT [dbo].[ProductOrders] ([product_order_id], [order_id], [product_id]) VALUES (100, 99, 10)
GO
SET IDENTITY_INSERT [dbo].[ProductOrders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (1, N'Adjustable Race', 3, CAST(562.00 AS Decimal(18, 2)), N'Adjustable Race is a very good product: AR-5381', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (2, N'Bearing Ball', 1, CAST(77.00 AS Decimal(18, 2)), N'Bearing Ball is a very good product: BA-8327', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (3, N'BB Ball Bearing', 4, CAST(403.00 AS Decimal(18, 2)), N'BB Ball Bearing is a very good product: BE-2349', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (4, N'Headset Ball Bearings', 3, CAST(279.00 AS Decimal(18, 2)), N'Headset Ball Bearings is a very good product: BE-2908', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (5, N'Blade', 1, CAST(208.00 AS Decimal(18, 2)), N'Blade is a very good product: BL-2036', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (6, N'LL Crankarm', 1, CAST(836.00 AS Decimal(18, 2)), N'LL Crankarm is a very good product: CA-5965', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (7, N'ML Crankarm', 1, CAST(511.00 AS Decimal(18, 2)), N'ML Crankarm is a very good product: CA-6738', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (8, N'HL Crankarm', 4, CAST(629.00 AS Decimal(18, 2)), N'HL Crankarm is a very good product: CA-7457', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (9, N'Chainring Bolts', 4, CAST(181.00 AS Decimal(18, 2)), N'Chainring Bolts is a very good product: CB-2903', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (10, N'Chainring Nut', 3, CAST(750.00 AS Decimal(18, 2)), N'Chainring Nut is a very good product: CN-6137', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (11, N'Chainring', 1, CAST(191.00 AS Decimal(18, 2)), N'Chainring is a very good product: CR-7833', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (12, N'Crown Race', 4, CAST(2.00 AS Decimal(18, 2)), N'Crown Race is a very good product: CR-9981', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (13, N'Chain Stays', 2, CAST(897.00 AS Decimal(18, 2)), N'Chain Stays is a very good product: CS-2812', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (14, N'Decal 1', 4, CAST(460.00 AS Decimal(18, 2)), N'Decal 1 is a very good product: DC-8732', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (15, N'Decal 2', 4, CAST(968.00 AS Decimal(18, 2)), N'Decal 2 is a very good product: DC-9824', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (16, N'Down Tube', 4, CAST(129.00 AS Decimal(18, 2)), N'Down Tube is a very good product: DT-2377', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (17, N'Mountain End Caps', 3, CAST(37.00 AS Decimal(18, 2)), N'Mountain End Caps is a very good product: EC-M092', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (18, N'Road End Caps', 2, CAST(690.00 AS Decimal(18, 2)), N'Road End Caps is a very good product: EC-R098', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (19, N'Touring End Caps', 2, CAST(169.00 AS Decimal(18, 2)), N'Touring End Caps is a very good product: EC-T209', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
INSERT [dbo].[Products] ([prodcut_id], [product_name], [category_id], [price], [description], [image_url], [date_added]) VALUES (20, N'Fork End', 2, CAST(332.00 AS Decimal(18, 2)), N'Fork End is a very good product: FE-3760', NULL, CAST(N'2015-02-22T19:16:36.820' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (getdate()) FOR [date_added]
GO
ALTER TABLE [dbo].[ProductOrders]  WITH CHECK ADD  CONSTRAINT [product_order_order_id] FOREIGN KEY([order_id])
REFERENCES [dbo].[Orders] ([order_id])
GO
ALTER TABLE [dbo].[ProductOrders] CHECK CONSTRAINT [product_order_order_id]
GO
ALTER TABLE [dbo].[ProductOrders]  WITH CHECK ADD  CONSTRAINT [product_order_product_id] FOREIGN KEY([product_id])
REFERENCES [dbo].[Products] ([prodcut_id])
GO
ALTER TABLE [dbo].[ProductOrders] CHECK CONSTRAINT [product_order_product_id]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [product_category_id] FOREIGN KEY([category_id])
REFERENCES [dbo].[Categories] ([category_id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [product_category_id]
GO