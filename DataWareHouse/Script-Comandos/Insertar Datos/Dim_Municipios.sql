INSERT INTO DataWareHouse.dbo.DIM_Municipios 
(CodDpto,CodMpio,  NomMpio, Tipo,Latitud, Longitud)
SELECT COD_DPTO,COD_MPIO,  TIPO,NOM_MPIO, LATITUD, LONGITUD
FROM DataLake.dbo.DL_Municipios;