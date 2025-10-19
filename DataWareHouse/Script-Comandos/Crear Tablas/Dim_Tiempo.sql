CREATE TABLE DataWareHouse.dbo.Dim_Tiempo (
	FechaHecho date NOT NULL,
	Annio int NOT NULL,
	IdMes tinyint NOT NULL,
	Dia tinyint NOT NULL,
	IdTrimestre tinyint NOT NULL,
	IdDiaSemana tinyint NOT NULL,
	Semana tinyint NOT NULL,
	CONSTRAINT Dim_Tiempo_PK PRIMARY KEY (FechaHecho),
	CONSTRAINT Dim_Tiempo_Dim_DiaSemana_FK FOREIGN KEY (IdDiaSemana) REFERENCES DataWareHouse.dbo.Dim_DiaSemana(IdDiaSemana),
	CONSTRAINT Dim_Tiempo_Dim_Meses_FK FOREIGN KEY (IdMes) REFERENCES DataWareHouse.dbo.Dim_Meses(IdMes),
	CONSTRAINT Dim_Tiempo_Dim_Trimestres_FK FOREIGN KEY (IdTrimestre) REFERENCES DataWareHouse.dbo.Dim_Trimestres(IdTrimestre)
);