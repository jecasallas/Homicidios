CREATE TABLE DataWareHouse.dbo.Dim_Departamentos (
	CodDpto tinyint NOT NULL,
	NomDpto varchar(56) NOT NULL,
	Latitud float NOT NULL,
	Longitud float NOT NULL,
	CONSTRAINT Dim_Departamentos_PK PRIMARY KEY (CodDpto)
);