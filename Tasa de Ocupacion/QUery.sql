Declare @Cuenta_Dias int
Declare @Mes_Actual date
Set @Cuenta_Dias = 1
Set @Mes_Actual = '20190301'

Create Table #Meses (
                                  Clave_JCD nvarchar(255)
                                  ,Fecha date
                                  )

Insert Into #Meses
SELECT [Clave JCD] as Clave_JCD
          ,Fecha = NULL
FROM [DW_Insumos].[dbo].[Inventario]
Where PROBLEMA = 'COMERCIALIZABLE' and Fecha_Corte = @Mes_Actual

WHILE @Cuenta_Dias <= DAY(EOMONTH(@Mes_Actual))
Begin

Insert Into #Meses
SELECT Distinct Clave_JCD
         ,Case
             When @Cuenta_Dias = 1 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 2 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 3 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 4 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 5 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 6 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 7 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 8 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 9 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 10 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 11 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 12 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 13 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 14 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 15 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 16 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 17 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 18 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 19 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 20 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 21 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 22 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 23 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 24 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 25 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 26 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 27 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 28 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 29 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 30 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
             When @Cuenta_Dias = 31 Then CAST(DATEFROMPARTS(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as date)
          End as Fecha
  FROM #Meses

Set @Cuenta_Dias = @Cuenta_Dias + 1

End


Delete 
From #Meses
Where Fecha is null

---------------------------------------------------------------------------------------------------------------------Arranca el proceso de Ventas

--SELECT Distinct CONCAT([SITIO], ISNULL([INDICE], ' '), [AREA]) as Sitio
--      ,DateFromPARts(RIGHT([INICIO CATORCENA EXHIBICION], 4), SUBSTRING([INICIO CATORCENA EXHIBICION], 4, 2), LEFT([INICIO CATORCENA EXHIBICION], 2)) as [INICIO CATORCENA EXHIBICION]
--      ,DateFromPARts(RIGHT([FIN CATORCENA EXHIBICION], 4), SUBSTRING([FIN CATORCENA EXHIBICION], 4, 2), LEFT([FIN CATORCENA EXHIBICION], 2)) as [FIN CATORCENA EXHIBICION]
--         ,Uso = 'MU'
--         ,TIPO
--       Into #MU
--  FROM [DW_Insumos].[dbo].[Eumex_RR]

-----------------------------------------------------------------------------------------------------------------------

SELECT [SUCVTA]
      ,[SUCCOL]
      ,[EMPRESAEMISORA]
      ,[VENUMERO] as Anexo
      ,[ANNUMERO] as Indice
	  ,CONCAT([SINUMERO], ISNULL([SIINDICE], ' '), [EXNUMERO]) as Sitio
      ,[NEGOCIO]
      ,[EJNOM] as Ejecutivo
      ,[CLNOMBRE] as Cliente
      ,[CLIENTEEXHIBE] as Cliente_Exhibe
      ,Case
		When [AGNOMBRE] = '-' Then NULL
		Else AGNOMBRE
	   End as AGENCIA
      ,[COMIAGENCIA] as Comision_Agencia
      ,[ANFECINI]
      ,[ANFECFIN]
      ,[ANFECEXH]
      ,[ANFECRET]
	  ,[VECONVERSION]
	  ,MONTO_TOTAL
	  ,LNNOMBRE
	  ,PLNUMERO
	  ,ROW_NUMBER() Over(Partition by VENUMERO, ANNUMERO Order by ANFECFIN desc) as Cuenta
	Into #Ventas1
  FROM (
 
 Select [SUCVTA]
,[SUCCOL]
,[EMPRENUMERO]
,[EMPRESAEMISORA]
,[NEGOCIO]
,[VENUMERO]
,[ANNUMERO]
,[SINUMERO]
,[SIINDICE]
,[EXNUMERO]
,[TIPOANUNCIO]
,[BADESCRIPCION]
,[ANBAJA]
,[SICALLE]
,[SICOLONIA]
,[PONOMBRE]
,[EDNOMBRE]
,[BASE_X_ALTURA]
,[LNNOMBRE]
,[LUZ]
,[CSNUMERO]
,[VECONANT]
,[CLNUMERO]
,[CLNOMBRE]
,[CLIENTEEXHIBE]
,[DIASCREDITO]
,[CLIENTETIPO]
,[CLIENTEINE]
,[EJNOM]
,[AGNOMBRE]
,[COMIAGENCIA]
,[VEDESAGE]
,[CANOMBRE]
,[ANVERSION]
,[LINEANEGOCIO]
,[ANFECINI]
,[ANFECFIN]
,[ANFECEXH]
,[ANFECRET]
,[VECONVERSION]
,[VECAPTURA]
,[FECHAEXTENSION]
,[FECHABAJABLOCK]
,[ANTARFAC]
,[ANMESES]
,[ANDIAS]
,[MONTO_TOTAL]
,[STNOMBRE]
,[VEFIRMADO]
,[VEORCOMP]
,[ORFIRMADA]
,[PLNUMERO]
,[EXTARIFA]
From [DW_Insumos].[dbo].[VENTAS]
 
 UNION ALL
 
 SELECT [SUCVTA]
      ,[SUCCOL]
      ,[EMPRENUMERO]
      ,[EMPRESAEMISORA]
      ,[NEGOCIO]
      ,A.[VENUMERO]
      ,A.[ANNUMERO]
      ,[SINUMERO]
      ,[SIINDICE]
      ,[EXNUMERO]
      ,[TIPOANUNCIO]
      ,[BADESCRIPCION]
      ,[ANBAJA]
      ,[SICALLE]
      ,[SICOLONIA]
      ,[PONOMBRE]
      ,[EDNOMBRE]
      ,[BASE_X_ALTURA]
      ,[LNNOMBRE]
      ,[LUZ]
      ,[CSNUMERO]
      ,[VECONANT]
      ,[CLNUMERO]
      ,[CLNOMBRE]
      ,[CLIENTEEXHIBE]
      ,[DIASCREDITO]
      ,[CLIENTETIPO]
      ,[CLIENTEINE]
      ,[EJNOM]
      ,[AGNOMBRE]
      ,[COMIAGENCIA]
      ,[VEDESAGE]
      ,[CANOMBRE]
      ,[ANVERSION]
      ,[LINEANEGOCIO]
      ,[ANFECINI]
      ,[ANFECFIN]
      ,[ANFECEXH]
      ,[ANFECRET]
      ,[VECONVERSION]
      ,[VECAPTURA]
      ,[FECHAEXTENSION]
      ,[FECHABAJABLOCK]
      ,[ANTARFAC]
      ,[ANMESES]
      ,[ANDIAS]
      ,A.[MONTO_TOTAL]
      ,[STNOMBRE]
      ,[VEFIRMADO]
      ,[VEORCOMP]
      ,[ORFIRMADA]
      ,[PLNUMERO]
      ,[EXTARIFA]
  FROM [DW_Insumos].[dbo].[VENTAS_HISTORICO] as A
  Left Join (SELECT [VENUMERO]
      ,[ANNUMERO]
      ,[MONTO_TOTAL]
  FROM [DW_Insumos].[dbo].[VENTAS]) as B
  ON A.VENUMERO = B.VENUMERO and A.ANNUMERO = B.ANNUMERO
  Where B.MONTO_TOTAL is null) as B

----------------------------------------------------------------------------------------------------EUMEX

SELECT [SUCVENTA]
      ,[CIUDADCOL]
	  ,[EMPRESAEMISOR]
      ,[ANEXO]
      ,[INDICE]
      ,[TIPO]
	  ,PLANDEVENTA
      ,[EJECUTIVO]
      ,[CLIENTE]
      ,Case
		When [AGENCIA] = '-' Then NULL
		Else AGENCIA
	  End as AGENCIA
      ,[COMISIONAGE]
      ,[INICATANEXO]
      ,[FINCATANEXO]
      ,[INICATEXHIBICION]
      ,[FINCATEXHIBICION]
	  ,[FECHACONV]
	  ,TOTVENTA
	  ,ROW_NUMBER() OVer(Partition by Anexo, Indice Order by Anexo, Indice) as Cuenta
	Into #MU1
  FROM (

SELECT [PAIS]
      ,[EMPRESAEMISOR]
      ,[SUCVENTA]
      ,[ESTATUS]
      ,[CLAUSULADO]
      ,[ANEXO]
      ,[INDICE]
      ,[TIPO]
      ,[EJECUTIVO]
      ,[CLIENTE]
      ,[TIPOCLIENTE]
      ,[AGENCIA]
      ,[DESGAGENCIA]
      ,[EJECUTIVOCUENTA]
      ,[MONEDA]
      ,[TIPOCAMBIO]
      ,[IVA]
      ,[PRODUCTO]
      ,[PLANDEVENTA]
      ,[PERIODPAGOS]
      ,[RENOVACION]
      ,[ANEXOANT]
      ,[FECHAALTA]
      ,[FECHACONV]
      ,[TOTCARASANEXO]
      ,[IMPORTETOTANEXO]
      ,[INTERCAMBIO]
      ,[FIRMADOFACT]
      ,[FECHAFIRMFACT]
      ,[NUMEROPAGO]
      ,[PAGOANTICIPADO]
      ,[ORDENCOMPRA]
      ,[FACTURARA]
      ,[FECHAELIMINA]
      ,[FECHAACTUALIZA]
      ,[FECHAEXTENSION]
      ,[VECESEXTENDIDO]
      ,[FECHARECUPERA]
      ,[VECESRECUPERA]
      ,[CIUDADCOL]
      ,[CATANEXO]
      ,[INICATANEXO]
      ,[FINCATANEXO]
      ,[CATEXHIBICION]
      ,[INICATEXHIBICION]
      ,[FINCATEXHIBICION]
      ,[CATFACTURACION]
      ,[CAMPANA]
      ,[NUMCARAVEN]
      ,[PRECIOLISTCAT]
      ,[PRECIOVENTACAT]
      ,[TOTVENTA]
      ,[CARGOIMP]
      ,[NOCARTELESIMP]
      ,[IMPUNITCARTIMP]
      ,[TOTIMPIMPRESION]
      ,[MOTCANC]
      ,[FECHACANC]
      ,[INGRESOS]
      ,[OTROSGASTOS]
      ,[DESCUENTO]
      ,[COMISIONEJEC]
      ,[COMISIONAGE]
      ,[ARTE]
      ,[LLEGOARTETARDE]
      ,[FECHAREV]
      ,[FECHAPRON]
      ,[COMENTARIOS]
      ,[SEMQUEEXHIBE]
      ,[PORFOTO]
      ,[BAJAINDICE]
      ,[VIGENTE]
  FROM [DW_Insumos].[dbo].[VENTASMU]
  Where BAJAINDICE = 'NO'

UNION ALL

SELECT [PAIS]
      ,[EMPRESAEMISOR]
      ,[SUCVENTA]
      ,[ESTATUS]
      ,[CLAUSULADO]
      ,A.[ANEXO]
      ,A.[INDICE]
      ,[TIPO]
      ,[EJECUTIVO]
      ,[CLIENTE]
      ,[TIPOCLIENTE]
      ,[AGENCIA]
      ,[DESGAGENCIA]
      ,[EJECUTIVOCUENTA]
      ,[MONEDA]
      ,[TIPOCAMBIO]
      ,[IVA]
      ,[PRODUCTO]
      ,[PLANDEVENTA]
      ,[PERIODPAGOS]
      ,[RENOVACION]
      ,[ANEXOANT]
      ,[FECHAALTA]
      ,[FECHACONV]
      ,[TOTCARASANEXO]
      ,[IMPORTETOTANEXO]
      ,[INTERCAMBIO]
      ,[FIRMADOFACT]
      ,[FECHAFIRMFACT]
      ,[NUMEROPAGO]
      ,[PAGOANTICIPADO]
      ,[ORDENCOMPRA]
      ,[FACTURARA]
      ,[FECHAELIMINA]
      ,[FECHAACTUALIZA]
      ,[FECHAEXTENSION]
      ,[VECESEXTENDIDO]
      ,[FECHARECUPERA]
      ,[VECESRECUPERA]
      ,[CIUDADCOL]
      ,[CATANEXO]
      ,[INICATANEXO]
      ,[FINCATANEXO]
      ,[CATEXHIBICION]
      ,[INICATEXHIBICION]
      ,[FINCATEXHIBICION]
      ,[CATFACTURACION]
      ,[CAMPANA]
      ,[NUMCARAVEN]
      ,[PRECIOLISTCAT]
      ,[PRECIOVENTACAT]
      ,A.[TOTVENTA]
      ,[CARGOIMP]
      ,[NOCARTELESIMP]
      ,[IMPUNITCARTIMP]
      ,[TOTIMPIMPRESION]
      ,[MOTCANC]
      ,[FECHACANC]
      ,[INGRESOS]
      ,[OTROSGASTOS]
      ,[DESCUENTO]
      ,[COMISIONEJEC]
      ,[COMISIONAGE]
      ,[ARTE]
      ,[LLEGOARTETARDE]
      ,[FECHAREV]
      ,[FECHAPRON]
      ,[COMENTARIOS]
      ,[SEMQUEEXHIBE]
      ,[PORFOTO]
      ,[BAJAINDICE]
      ,[VIGENTE]
  FROM [DW_Insumos].[dbo].[VENTASMU_HISTORICO] as A
  Left Join (SELECT ANEXO
      ,INDICE
      ,TOTVENTA
  FROM [DW_Insumos].[dbo].[VENTASMU]
  Where BAJAINDICE = 'NO') as B
  ON A.ANEXO = B.ANEXO and A.INDICE = B.INDICE
  Where B.TOTVENTA is null and BAJAINDICE = 'NO') as B

Select Distinct A.ANEXO
	  ,INDICE
	  ,B.Clave_JCD
	  ,Uso = 'MU'
	  ,TIPO
	  ,INICATANEXO
	  ,FINCATANEXO
	  ,INICATEXHIBICION
	  ,FINCATEXHIBICION
	  ,TOTVENTA
	  ,PLANDEVENTA
	  ,ROW_NUMBER () Over(Partition by A.Anexo, Indice Order by A.Anexo, Indice) as Cuenta
	Into #MU2
From #MU1 as A
Left Join (SELECT Distinct [ANEXO]
      ,[INDICE CAMPAÑA]
      ,CONCAT([SITIO], ISNULL([INDICE], ' '), AREA) as Clave_JCD
  FROM [DW_Insumos].[dbo].[RR_MU]
  Where CONCAT([SITIO], ISNULL([INDICE], ' '), AREA) <> ' ') as B
ON A.ANEXO = B.ANEXO and A.INDICE = B.[INDICE CAMPAÑA]
Where Cuenta = 1 and B.Clave_JCD is not null

-----------------------------------------------------------------------------------------------------
Select A.*
	   ,((TOTVENTA / Maximo) / DATEDIFF(DAY, INICATANEXO, FINCATANEXO) + 1) as Tarifa_Sitio
	   ,C.ESTADIO_SITIO
	Into #MU3
From #MU2 as A
Left Join (
Select ANEXO
	  ,INDICE
	  ,MAX(Cuenta) as Maximo
From #MU2
Group by ANEXO, INDICE) as B
ON A.Anexo = B.ANEXO and A.Indice = B.INDICE
Left Join (SELECT Distinct [CLAVE JCD]
      ,ESTADIO_SITIO
  FROM [DW_Insumos].[dbo].[Inventario]) as C
  ON A.Clave_JCD = C.[CLAVE JCD]
  Order by ANEXO, INDICE

-----------------------------------------------------------------------------------------------------


Select [Sitio],
Case
             When NEGOCIO = 'GRAN FORMATO' Then 'GF'
             Else 'CMI'
          End as Uso,
LNNOMBRE as LINEA,
TARIFA_DIARIA = (Monto_Total / Case when DateDiff(day, [ANFECINI],[ANFECFIN]) <= 0 Then 1 Else DateDiff(day, [ANFECINI],[ANFECFIN]) end),
[ANFECEXH] as Fecha_Inicio_Exh,
[ANFECRET] as Fecha_Fin_Exh,
PLNUMERO as Tipo_venta,
Anexo,
Indice
Into #Ventas2
From #Ventas1
Where Cuenta = 1



Select Sitio
	  ,Uso
	  ,Linea
	  ,Tarifa_diaria
	  ,Fecha_Inicio_Exh
	  ,Fecha_Fin_Exh
	  ,Tipo_Venta
	  ,Anexo
	  ,Indice
	Into #Ventas3
From #Ventas2

----------------------------------------------------------------------------------------------------------------------



Select *
Into #Fecha_GF1
From(
SELECT Distinct Sitio
      ,[FECHA_INICIO_EXH]
      ,[FECHA_FIN_EXH]
         ,Uso
         ,LINEA
	  ,TARIFA_DIARIA
	  ,Tipo_venta
	  ,Anexo
	  ,Indice
  FROM #Ventas3
   Where MONTH(@Mes_Actual) between MONTH(Fecha_Inicio_Exh) and 
                                                                                                            Case 
                                                                                                                  When YEAR(Fecha_Fin_Exh) > YEAR(Fecha_Inicio_Exh) and YEAR(@Mes_Actual) = YEAR(Fecha_Inicio_Exh) Then 15 
                                                                                                                  Else MONTH(Fecha_Fin_Exh) 
                                                                                                            end 
                                                                                                                  and DATEDIFF(day, Fecha_Inicio_Exh, Fecha_Fin_Exh) >= 0

             UNION


SELECT Distinct Sitio
      ,[FECHA_INICIO_EXH]
      ,[FECHA_FIN_EXH]
         ,Uso
         ,LINEA
	 ,TARIFA_DIARIA
	 ,Tipo_venta
	 ,Anexo
	 ,Indice
  FROM #Ventas2
   Where datediff(day, '20100101', @Mes_Actual) between DATEDIFF(day, '20100101', Fecha_Inicio_Exh) and DATEDIFF(day, '20100101', Fecha_Fin_exh) 
                                                                                                                  and DATEDIFF(day, Fecha_Inicio_Exh, Fecha_Fin_Exh) >= 0
) as B



Select *
Into #Fecha_GF
From (
	  Select *
	  From #Fecha_GF1

	  UNION ALL

	  Select Clave_JCD
		  ,INICATEXHIBICION
		  ,FINCATEXHIBICION
		  ,Uso
		  ,TIPO
		  ,Tarifa_Sitio
		  ,PLANDEVENTA
		  ,ANEXO
		  ,INDICE
	  From #MU3
	  Where YEAR(INICATEXHIBICION) = YEAR(@Mes_Actual)
	  ) as B

------------------------------------------------------------------------------

Create Table #Venta_GF (
                                  Sitio nvarchar(255)
                                  ,Fecha date
                                  ,Uso nvarchar(255)
                                  ,Linea nvarchar(255)
								  ,Tarifa_Diaria float
								  ,Tipo_Venta nvarchar(255)
								  ,Anexo nvarchar(255)
								  ,Indice int
                                  )

SET @Cuenta_Dias = 1

While @Cuenta_Dias <= DAY(EOMONTH(@Mes_Actual))
Begin


Insert Into #Venta_GF

Select Sitio
         ,DateFromParts(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) as Fecha
         ,Uso
         ,LINEA
		 ,TARIFA_DIARIA
		 ,Tipo_venta
		 ,Anexo
		 ,Indice
From #Fecha_GF
Where FECHA_INICIO_EXH <= DateFromParts(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias) and FECHA_FIN_EXH >= DateFromParts(YEAR(@Mes_Actual), MONTH(@Mes_Actual), @Cuenta_Dias)

Set @Cuenta_Dias = @Cuenta_Dias + 1

End

---------------------------------------------------------------------------------------------------------------------

Select Distinct Clave_JCD
          ,A.Fecha
          ,ISNULL(B.Uso, 'Disponible') as Uso
          ,ISNULL(B.Linea, 'Disponible') as Linea
		  ,Tipo_Venta
		  ,Anexo
		  ,Indice as Indice_Anexo
		  ,SUM(Tarifa_Diaria) as Tarifa_Diaria
       Into #Final1
From #Meses as A
Left Join #Venta_GF as B
ON A.Clave_JCD = B.Sitio and A.Fecha = B.Fecha
Group by Clave_JCD, A.Fecha, B.Uso, B.Linea, Tipo_Venta, Anexo, Indice
Order by Clave_JCD, A.Fecha

------------------------------------------------------------------------------------------------------------------ Información de inventario

SELECT [NUM_ARRENDADOR]
      ,[NOMBRE_ARRENDADOR]
      ,[APELLIDO_PATERNO_ARRRENDADOR]
      ,[APELLIDO_MATERNO_ARRENDADOR]
      ,[SUCURSAL_ARRENDADOR]
      ,[ESTADO_ARRENDADOR]
      ,[NUM_POBLACION]
      ,[POBLACION_ARRENDADOR]
      ,[CALLE_ARRENDADOR]
      ,[COLONIA_ARRENDADOR]
      ,[CODIGO_POSTAL_ARRENDADOR]
      ,[RFC_ARRENDADOR]
      ,[TEL_CASA_ARRENDADOR]
      ,[TEL_OFICINA_ARRENDADOR]
      ,[ID_SAP_ARRENDADOR]
      ,[EMPRESA_DEL_ANUNCIO]
      ,[SUCURSAL_SITIO]
      ,[DIRECTOR_REGIONAL]
      ,[REGION]
      ,[GERENTE]
      ,[ABOGADO]
      ,[ALMACEN_SITIO]
      ,[SITIO]
      ,[INDICE]
      ,[AREA]
      ,[CLAVE JCD]
      ,[CODIGO_ANTERIOR]
      ,[ESTACION_PLAZA]
      ,[CEBES]
      ,[ID_PLANTILLA]
      ,[DESCRIPCION_PLANTILLA]
      ,[CALLE_SITIO]
      ,[COLONIA_SITIO]
      ,[CODIGO_POSTAL_SITIO]
      ,[LOCALIZACION1]
      ,[LOCALIZACION2]
      ,[LATITUD]
      ,[LONGITUD]
      ,[ESTADIO_SITIO]
      ,[POBLACION_SITIO]
      ,[NEGOCIADOR]
      ,[CONTACTO_INMUEBLE]
      ,[TELEFONO_CONTACTO_INMUEBLE]
      ,[COMENTARIOS_CONTACTO_INMUEBLE]
      ,[TIPO_ACCESO]
      ,[NEGOCIO]
      ,[TIPO_ESTRUCTURA]
      ,[NOMBRE_ESTRUCTURA]
      ,[ID_SAP_SITIO]
      ,[ID_SAP_AREA]
      ,[TIPO_ANUNCIO]
      ,[ALTURA_IMPRESION]
      ,[BASE_IMPRESION]
      ,[ALTURA_VISIBLE]
      ,[BASE_VISIBLE]
      ,[ALTURA_OVERALL]
      ,[BASE_OVERALL]
      ,[TAMAÑO]
      ,[LINEA_AREA]
      ,[MATERIAL]
      ,[LUZ]
      ,[ENCENDIDO]
      ,[LUZ_PROPIA]
      ,[UBICACION]
      ,[CIRCUITO]
      ,[PROPIEDAD]
      ,[CUADRILLA]
      ,([TARIFA_SUGERIDA] / 30) as Tarifa_Sugerida
      ,([TARIFA_MINIMA] / 30) as Tarifa_Minima
      ,([TARIFA_MINIMA_REAL] / 30) as Tarifa_Minima_Real
      ,[TASA]
      ,[PROBLEMA]
      ,[DISPONIBILIDAD]
      ,[CALIFICACION]
      ,[MIRA]
      ,[VISTA]
      ,[VISTA_VEHICULAR]
      ,[VISIBILIDAD]
      ,[AUDIENCIA]
      ,[TRAFICO]
      ,[VIALIDAD]
      ,[ZONA_SOCIOECONOMICA]
      ,[RESTRICCION]
      ,[SUBTIPO]
      ,[TIPO_WEEKLY]
      ,[TIPO_PACING]
      ,[RUTA_COLOCACION]
      ,[RUTA_FOTOGRAFICA]
      ,[NOTAS_VENTAS]
      ,[OBSERVACIONES]
      ,[BAJA_SITIO]
      ,[BAJA_ESTRUCTURA]
      ,[BAJA_CARA]
      ,[FECHA_CORTE]
	  ,ROW_NUMBER () Over(Partition by [Clave JCD] order by Fecha_Corte desc) as Cuenta
	Into #Temp1
  FROM [DW_Insumos].[dbo].[Inventario]


--Insert Into [Reporting].[dbo].[Ocupacion_Inventario_MU]

Select A.*
	  ,Tarifa_Minima
	  ,Tarifa_Minima_Real
	  ,Tarifa_Sugerida
--Into [Reporting].[dbo].[Ocupacion_Inventario_MU]
From #Final1 as A
Left Join (Select * From #Temp1 Where Cuenta = 1) as B
ON A.Clave_JCD = B.[CLAVE JCD]
Order by Clave_JCD, Fecha

---------------------------------------------------------------------------------------------------------------------------------Proceso de Update de MU

Select *
From #MU3



Drop Table #Meses
Drop Table #Fecha_GF
Drop Table #Venta_GF
Drop Table #MU1
Drop Table #Final1
Drop Table #Ventas1
Drop Table #Ventas2
Drop Table #Temp1
Drop Table #MU2
Drop Table #MU3
Drop Table #Ventas3
Drop Table #Fecha_GF1