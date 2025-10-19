insert into DataWareHouse.dbo.Dim_Tiempo
(FechaHecho,Annio,IdMes,Dia,IdTrimestre,IdDiaSemana,Semana)
select distinct  FECHA_HECHO,
YEAR(FECHA_HECHO),
MONTH(FECHA_HECHO),
DAY(FECHA_HECHO),
DATEPART (QUARTER,FECHA_HECHO),
DATEPART (WEEKDAY,FECHA_HECHO),
DATEPART (WEEK,FECHA_HECHO)
from  DataLake.dbo.DL_Homicidios
order BY FECHA_HECHO asc;