----------------------------------------
USE assigmenttest  
GO  
EXEC sys.sp_cdc_enable_db
RAISERROR ('CDC Enabled', 0, 1) WITH NOWAIT
GO


----------------------------------------

CREATE ROLE [admin]
RAISERROR ('Admin Role Created', 0, 1) WITH NOWAIT
GO

----------------------------------------
  
EXEC sys.sp_cdc_enable_table  
@source_schema = N'dbo',  
@source_name   = N'Products',  
@role_name     = N'admin',  
@filegroup_name = N'PRIMARY',  
@supports_net_changes = 1
RAISERROR ('CDC Enabled on Products Table', 0, 1) WITH NOWAIT
GO 

WAITFOR DELAY '00:00:05';
go

----------------------------------------

CREATE TABLE [dbo].[ProductsHistory](
    [product_history_id] int not null identity(1,1) primary key,
	[OpertionPerformed] varchar(50) not null,
	[prodcut_id] [int] NOT NULL,
	[product_name] [nvarchar](500) NOT NULL,
	[category_id] [int] NOT NULL,
	[price] [decimal](18, 2) NOT NULL,
	[description] [nvarchar](1000) NULL,
	[image_url] [nvarchar](255) NULL,
	[date_added] [datetime] NOT NULL,
	[date_modified] [datetime] NOT NULL
)
RAISERROR ('History Table Created', 0, 1) WITH NOWAIT
Go
----------------------------------------

Update Products
SET product_name = 'Bearing Ball'
where prodcut_id = 2
RAISERROR ('Update Command Executed', 0, 1) WITH NOWAIT
Go

WAITFOR DELAY '00:00:09';
go
----------------------------------------

--Declare @begin binary(10), @end binary(10)
--SET @begin = sys.fn_cdc_get_min_lsn('dbo_Products')
--SET @end = sys.fn_cdc_get_max_lsn()

Insert Into [dbo].[ProductsHistory]
(
	  [OpertionPerformed]
      ,[prodcut_id]
      ,[product_name]
      ,[category_id]
      ,[price]
      ,[description]
      ,[image_url]
      ,[date_added]
      ,[date_modified]
)
Select CASE 
		WHEN [__$operation] = '1' THEN 'Delete'
		WHEN [__$operation] = '2' THEN 'Insert'
		WHEN [__$operation] = '3' OR [__$operation] = '4' THEN 'Update'
	   END AS OpertionPerformed,
[prodcut_id],[product_name],[category_id],[price],[description],[image_url],[date_added], getdate() as [date_modified]
from [cdc].[fn_cdc_get_net_changes_dbo_Products](sys.fn_cdc_get_min_lsn('dbo_Products'),sys.fn_cdc_get_max_lsn(),N'ALL')
RAISERROR ('Data Inserted Into History Table', 0, 1) WITH NOWAIT
GO

----------------------------------------

Select * from [dbo].[ProductsHistory]
GO
----------------------------------------

--WAITFOR DELAY '00:00:09';
--go
----------------------------------------

EXEC sys.sp_cdc_disable_db
RAISERROR ('CDC Disabled', 0, 1) WITH NOWAIT
GO
----------------------------------------

Drop ROLE [admin]
Drop Table [dbo].[ProductsHistory]
GO