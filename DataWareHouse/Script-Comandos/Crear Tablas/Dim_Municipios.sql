CREATE TABLE DataWareHouse.dbo.Dim_Municipios (
	CodDpto tinyint NOT NULL,
	CodMpio int NOT NULL,
	NomMpio nvarchar(30)  NOT NULL,
	Tipo varchar(100)  NOT NULL,
	Latitud float NOT NULL,
	Longitud float NOT NULL,
	CONSTRAINT DIM_Municipios_PK PRIMARY KEY (CodMpio),
	CONSTRAINT DIM_Municipios_DIM_Departamentos_FK FOREIGN KEY (CodDpto) REFERENCES DataWareHouse.dbo.Dim_Departamentos(CodDpto)
);