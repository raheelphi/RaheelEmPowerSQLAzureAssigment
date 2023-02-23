use assigmenttest
GO

CREATE SCHEMA [DW]
GO

/****** Object:  Table [DW].[DimCategory]    Script Date: 23/02/2023 11:47:18 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DW].[DimCategory](
	[dimcategoryid] [int] NOT NULL Identity(1,1) Primary Key ,
	[categoryid] [int] NOT NULL,
	[categoryname] [nvarchar](500) NOT NULL,
	[description] [nvarchar](1000) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [DW].[DimProduct]    Script Date: 23/02/2023 11:47:18 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DW].[DimProduct](
	[dimproductid] [int] NOT NULL Identity(1,1) Primary Key,
	[productid] [int] NOT NULL,
	[productname] [nvarchar](500) NULL,
	[supplierid] [int] NOT NULL,
	[categoryid] [int] NOT NULL,
	[unitprice] [decimal](18, 2) NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Table [DW].[DimSupplier]    Script Date: 23/02/2023 11:47:18 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DW].[DimSupplier](
	[dimsupplierid] [int] NOT NULL Identity(1,1) Primary Key,
	[supplierid] [int] NOT NULL,
	[companyname] [nvarchar](500) NULL,
	[contactname] [nvarchar](500) NULL,
	[contacttitle] [nvarchar](500) NULL,
	[address] [nvarchar](500) NULL,
	[city] [nvarchar](500) NULL,
	[region] [nvarchar](500) NULL,
	[postalcode] [int] NULL,
	[country] [nvarchar](500) NULL,
	[phone] [nvarchar](500) NULL,
	[fax] [nvarchar](500) NULL
) ON [PRIMARY]
GO

/****** Object:  Table [DW].[FactSale]    Script Date: 23/02/2023 11:47:18 am ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [DW].[FactSale](
	[factsaleid] [int] NOT NULL Identity(1,1) Primary Key Nonclustered,
	[saleid] [int] NOT NULL,
	[productid] [int] NOT NULL,
	[categoryid] [int] NOT NULL,
	[supplierid] [int] NOT NULL,
	[saledate] [date] NOT NULL,
	[quantity] [int] NOT NULL,
	[saleprice] [decimal](18, 2) NOT NULL,
	[unitprice] decimal(18,2) NOT NULL
) ON [PRIMARY]
GO


