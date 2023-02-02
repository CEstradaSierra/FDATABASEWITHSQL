USE [Facturas]
GO

/****** Object:  Table [dbo].[Cliente]    Script Date: 2/02/2023 9:19:55 a. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Cliente](
	[dni] [varchar](10) NOT NULL,
	[nombre] [varchar](40) NOT NULL,
	[email] [varchar](25) NULL,
	[edad] [tinyint] NULL,
	[direccion] [varchar](50) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[dni] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UQ_Cliente] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [CK_edad_mayor_cero] CHECK  (([edad]>(0)))
GO

ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [CK_edad_mayor_cero]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'restriccion unica a email' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Cliente', @level2type=N'CONSTRAINT',@level2name=N'UQ_Cliente'
GO
