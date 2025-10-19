CREATE TABLE DataWareHouse.dbo.Dim_Sexo (
	IdSexo tinyint IDENTITY(1,1) NOT NULL,
	NomSexo nvarchar(20) NOT NULL,
	CONSTRAINT Dim_Sexo_PK PRIMARY KEY (IdSexo)
);