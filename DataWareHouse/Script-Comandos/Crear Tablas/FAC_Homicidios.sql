CREATE TABLE DataWareHouse.dbo.FAC_Homicidios (
	IdHomicidio int IDENTITY(1,1) NOT NULL,
	FechaHecho date NOT NULL,
	CodMpio int NOT NULL,
	IdZona tinyint NOT NULL,
	IdSexo tinyint NOT NULL,
	Cantidad tinyint NOT NULL,
	CONSTRAINT FAC_Homicidios_PK PRIMARY KEY (IdHomicidio),
	CONSTRAINT FAC_Homicidios_DIM_Municipios_FK FOREIGN KEY (CodMpio) REFERENCES DataWareHouse.dbo.Dim_Municipios(CodMpio),
	CONSTRAINT FAC_Homicidios_DIM_Sexo_FK FOREIGN KEY (IdSexo) REFERENCES DataWareHouse.dbo.Dim_Sexo(IdSexo),
	CONSTRAINT FAC_Homicidios_DIM_Zonas_FK FOREIGN KEY (IdZona) REFERENCES DataWareHouse.dbo.Dim_Zonas(IdZona),
	CONSTRAINT FAC_Homicidios_Dim_Tiempo_FK FOREIGN KEY (FechaHecho) REFERENCES DataWareHouse.dbo.Dim_Tiempo(FechaHecho)
);