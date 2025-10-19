CREATE TABLE DataWareHouse.dbo.Dim_Trimestres (
	IdTrimestre tinyint IDENTITY(1,1) NOT NULL,
	NomTrimestre nvarchar(15) NOT NULL,
	NomCortoTrimestre char(6) NOT NULL,
	CONSTRAINT DIM_Trimestres_PK PRIMARY KEY (IdTrimestre)
);