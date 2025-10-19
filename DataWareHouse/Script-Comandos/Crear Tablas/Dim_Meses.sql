CREATE TABLE DataWareHouse.dbo.Dim_Meses (
	IdMes tinyint IDENTITY(1,1) NOT NULL,
	NomMes nvarchar(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	NomCortoMes char(3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	CONSTRAINT Dim_Meses_PK PRIMARY KEY (IdMes)
);