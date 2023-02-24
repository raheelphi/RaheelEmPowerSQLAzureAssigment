/****** Object:  View [dbo].[QLHGM_Properties]    Script Date: 24/02/2023 3:26:26 pm ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[VwProductCognitiveSearch] AS
SELECT p.[prodcut_id]
      ,p.[product_name]
      ,p.[category_id]
	  ,c.[category_name]
      ,p.[price]
      ,p.[description]
      ,p.[date_added]
  FROM [dbo].[Products] as p
  Join Categories as c ON p.category_id = c.category_id
GO


