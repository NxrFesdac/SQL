
Select Distinct [ANEXO]
,[INDICE]
,[COMAG]
,CLIENTE
,SIA
Into #Com
From (
SELECT [SUCVTA]
      ,[SUCCOL]
	  ,Empresa_Emisora = NULL
      ,[ANEXO]
      ,[INDICE]
	  ,SIA = NULL
      ,[TIPO]
      ,[EJECUTIVO]
      ,[CLIENTE]
      ,[CLIENTEEXHIBE]
      ,Case
		WHen [AGENCIA] = '-' Then NULL
		Else [AGENCIA]
	  End as AGENCIA
      ,[COMAG]
      ,[INICTTO]
      ,[FINCTTO]
      ,[INIEXH]
      ,[FINEXH]
	  ,[FECFIRMA] as Fecha_Conv
  FROM (

SELECT [SUCVTA]
      ,[SUCCOL]
      ,[PLACOL]
      ,[TIPO]
      ,[CLAUSULADO]
      ,A.[ANEXO]
      ,A.[INDICE]
      ,[CTTOANT]
      ,[RUTAID]
      ,[CORRID]
      ,[TIPOPUBLI]
      ,[BAJA]
      ,[RUTA]
      ,[ORIGEN]
      ,[DESTINO]
      ,[CORREDOR]
      ,[UNIDADES]
      ,[COSTOARR]
      ,[COSTOCOL]
      ,[TOTALAREA]
      ,[COSTOXUNIDAD]
      ,[COSTOPRODUCCION]
      ,[CSFIRMADO]
      ,[NOCLIENTE]
      ,[CLIENTE]
      ,[CLIENTEEXHIBE]
      ,[CLIENTETIPO]
      ,[CLIENTEINE]
      ,[PROVEDOR]
      ,[TIPOFLUJO]
      ,[EJECUTIVO]
      ,[COMEJ]
      ,[AGENCIA]
      ,[COMAG]
      ,[DESAGE]
      ,[MONEDA]
      ,[IVA]
      ,[VERSION]
      ,[INICTTO]
      ,[FINCTTO]
      ,[INIEXH]
      ,[FINEXH]
      ,[MESES]
      ,[DIAS]
      ,[AUTORIZADO]
      ,[COLOCADO]
      ,[FECCAPT]
      ,[FECFIRMA]
      ,[FECAUT]
      ,[IMPMENS]
      ,[IMPMENSNAC]
      ,[IMPTOTDOL]
      ,A.[IMPTOT]
  FROM [DW_Insumos].[dbo].[VENTASBUS] as A

UNION ALL

SELECT [SUCVTA]
      ,[SUCCOL]
      ,[PLACOL]
      ,[TIPO]
      ,[CLAUSULADO]
      ,A.[ANEXO]
      ,A.[INDICE]
      ,[CTTOANT]
      ,[RUTAID]
      ,[CORRID]
      ,[TIPOPUBLI]
      ,[BAJA]
      ,[RUTA]
      ,[ORIGEN]
      ,[DESTINO]
      ,[CORREDOR]
      ,[UNIDADES]
      ,[COSTOARR]
      ,[COSTOCOL]
      ,[TOTALAREA]
      ,[COSTOXUNIDAD]
      ,[COSTOPRODUCCION]
      ,[CSFIRMADO]
      ,[NOCLIENTE]
      ,[CLIENTE]
      ,[CLIENTEEXHIBE]
      ,[CLIENTETIPO]
      ,[CLIENTEINE]
      ,[PROVEDOR]
      ,[TIPOFLUJO]
      ,[EJECUTIVO]
      ,[COMEJ]
      ,[AGENCIA]
      ,[COMAG]
      ,[DESAGE]
      ,[MONEDA]
      ,[IVA]
      ,[VERSION]
      ,[INICTTO]
      ,[FINCTTO]
      ,[INIEXH]
      ,[FINEXH]
      ,[MESES]
      ,[DIAS]
      ,[AUTORIZADO]
      ,[COLOCADO]
      ,[FECCAPT]
      ,[FECFIRMA]
      ,[FECAUT]
      ,[IMPMENS]
      ,[IMPMENSNAC]
      ,[IMPTOTDOL]
      ,A.[IMPTOT]
  FROM [DW_Insumos].[dbo].[VENTASBUS_HISTORICO] as A
  Left Join (SELECT ANEXO
      ,INDICE
      ,IMPTOT
  FROM [DW_Insumos].[dbo].[VENTASBUS]) as B
  ON A.ANEXO = B.ANEXO and A.INDICE = B.INDICE
  Where B.IMPTOT is null) as B

UNION ALL

SELECT [SUCVTA]
      ,[SUCCOL]
      ,[EMPRESAEMISORA]
      ,[VENUMERO]
      ,[ANNUMERO]
	  ,CONCAT([SINUMERO], ISNULL(SIINDICE, ' '), EXNUMERO) as SIA
      ,[NEGOCIO]
      ,[EJNOM]
      ,[CLNOMBRE]
      ,[CLIENTEEXHIBE]
      ,Case
		When [AGNOMBRE] = '-' Then NULL
		Else AGNOMBRE
	   End as AGENCIA
      ,[COMIAGENCIA]
      ,[ANFECINI]
      ,[ANFECFIN]
      ,[ANFECEXH]
      ,[ANFECRET]
	  ,[VECONVERSION]
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

UNION ALL

SELECT [SUCVENTA]
      ,[CIUDADCOL]
	  ,[EMPRESAEMISOR]
      ,[ANEXO]
      ,[INDICE]
	  ,SIA = NULL
      ,[TIPO]
      ,[EJECUTIVO]
      ,[CLIENTE]
	  ,Cliente_Exh = NULL
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
  Where B.TOTVENTA is null and BAJAINDICE = 'NO') as B) as B

---------------------------------------------------------------------------------------------------------------------------------------------

SELECT [VENUMERO]
      ,[ANNUMERO]
      ,[DW_Insumos].[dbo].[FN_Fechas_MesAño](MESANIO) as MESANIO
      ,[IMPORTE]
	Into #Ventas
  FROM (

SELECT [VENUMERO]
      ,[ANNUMERO]
      ,[MESANIO]
      ,[IMPORTE]
  FROM [DW_Insumos].[dbo].[VENTASDISP_HISTORICO]

UNION ALL

SELECT A.[VENUMERO]
      ,A.[ANNUMERO]
      ,A.[MESANIO]
      ,A.[IMPORTE]
  FROM [DW_Insumos].[dbo].[VENTASDISP] as A
  Left Join (SELECT [VENUMERO]
      ,[ANNUMERO]
      ,[MESANIO]
      ,[IMPORTE]
  FROM [DW_Insumos].[dbo].[VENTASDISP_HISTORICO]
  Where RIGHT(MESANIO, 4) = 2019) as B
  ON A.VENUMERO = B.VENUMERO and A.ANNUMERO = B.ANNUMERO and [DW_Insumos].[dbo].[FN_Fechas_MesAño](A.MESANIO) = [DW_Insumos].[dbo].[FN_Fechas_MesAño](B.MESANIO)
  Where B.IMPORTE is null or A.IMPORTE <> B.IMPORTE) as B
Where Importe <> 0


SELECT [ANEXO]
      ,[INDICE]
      ,[DW_Insumos].[dbo].[FN_Fechas_MesAño](MESANIO) as MESANIO
      ,[IMPORTE]
	Into #VentasBus
  FROM (

SELECT [ANEXO]
      ,[INDICE]
      ,[MESANIO]
      ,[IMPORTE]
  FROM [DW_Insumos].[dbo].[VENTASBUSDISP_HISTORICO]

UNION ALL

SELECT A.[ANEXO]
      ,A.[INDICE]
      ,A.[MESANIO]
      ,A.[IMPORTE]
  FROM [DW_Insumos].[dbo].[VENTASBUSDISP] as A
  Left Join (SELECT ANEXO
      ,[INDICE]
      ,[MESANIO]
      ,[IMPORTE]
  FROM [DW_Insumos].[dbo].[VENTASBUSDISP_HISTORICO]
  Where RIGHT(MESANIO, 4) = 2019) as B
  ON A.ANEXO = B.ANEXO and A.INDICE = B.INDICE and [DW_Insumos].[dbo].[FN_Fechas_MesAño](A.MESANIO) = [DW_Insumos].[dbo].[FN_Fechas_MesAño](B.MESANIO)
  Where B.IMPORTE is null or A.IMPORTE <> B.IMPORTE) as B
Where Importe <> 0


SELECT [ANEXO]
      ,[INDICE]
      ,[DW_Insumos].[dbo].[FN_Fechas_MesAño](MESANO) as MESANO
      ,[IMPORTE]
	Into #VentasMU
  FROM (

SELECT A.[ANEXO]
      ,A.[INDICE]
      ,A.[MESANO]
      ,A.[IMPORTE]
  FROM [DW_Insumos].[dbo].[VENTASMUDISP_HISTORICO] as A
  Left Join #Com as B
  ON A.ANEXO = B.ANEXO and A.INDICE = B.INDICE
  Where B.ANEXO is not null

UNION ALL

SELECT A.[ANEXO]
      ,A.[INDICE]
      ,A.[MESANO]
      ,A.[IMPORTE]
  FROM [DW_Insumos].[dbo].[VENTASMUDISP] as A
  Left Join (SELECT ANEXO
      ,[INDICE]
      ,[MESANO]
      ,[IMPORTE]
  FROM [DW_Insumos].[dbo].[VENTASMUDISP_HISTORICO]
  Where RIGHT(MESANO, 4) = 2019) as B
  ON A.ANEXO = B.ANEXO and A.INDICE = B.INDICE and [DW_Insumos].[dbo].[FN_Fechas_MesAño](A.MESANO) = [DW_Insumos].[dbo].[FN_Fechas_MesAño](B.MESANO)
  Left Join #COM as C
  ON A.ANEXO = C.ANEXO and A.INDICE = C.INDICE
  Where B.IMPORTE is null or A.IMPORTE <> B.IMPORTE and C.ANEXO is not null) as B


Select *
Into #Disp
From (
SELECT [VENUMERO]
      ,[ANNUMERO]
      ,DateFromParts(RIGHT([MESANIO], 4), Left(MESANIO, 2), 1) as MESANIO
      ,[IMPORTE]
  FROM #Ventas

UNION ALL

SELECT [ANEXO]
      ,[INDICE]
      ,DateFromParts(RIGHT([MESANIO], 4), Left(MESANIO, 2), 1) as MESANIO
      ,[IMPORTE]
  FROM #VentasBus

UNION ALL

SELECT [ANEXO]
      ,[INDICE]
      ,DateFromParts(RIGHT([MESANO], 4), Left(MESANO, 2), 1) as MESANIO
      ,[IMPORTE]
  FROM #VentasMU
 Where Importe <> 0) as B

 Select Distinct A.VENUMERO
	   ,A.ANNUMERO
	   ,A.MESANIO
	   ,(A.IMPORTE + ISNULL(C.Importe, 0)) as Importe
	   ,CAST(CONCAT('0.',COMAG) as float) as COMAG
	Into #Importe
 From #Disp as A
 Left Join #COM as B
 ON A.VENUMERO = B.ANEXO
 Left Join (SELECT [ANEXO_EXHIBICION]
      ,[ANUNCIO_EXHIBICION]
      ,DATEFROMPARTS(YEAR(FECHA_APLICACION_AJUSTE), MONTH(FECHA_APLICACION_AJUSTE), 1) as FECHA_APLICACION_AJUSTE
      ,([IMPORTE_AJUSTE] * -1) as Importe
  FROM [DW_Insumos].[dbo].[Ajustes_Venta]) as C
  ON A.VENUMERO = C.ANEXO_EXHIBICION and A.ANNUMERO = C.ANUNCIO_EXHIBICION and A.MESANIO = C.FECHA_APLICACION_AJUSTE

Select *
Into #Planta1
From (
Select VENUMERO
	  ,ANNUMERO
	  ,MESANIO
	  ,(Importe - (Importe * COMAG)) as Importe
From #Importe

UNION ALL

SELECT CAST(CONCAT(1234, CAST([ANEXO_EXHIBICION] as int)) as bigint)
      ,[ANUNCIO_EXHIBICION]
      ,CAST([FECHA_APLICACION_AJUSTE] as date) as Fecha
      ,(([IMPORTE_AJUSTE]- ([IMPORTE_AJUSTE] * [%COMISION_AGENCIA])) * -1) as Importe_Ajuste
  FROM [DW_Insumos].[dbo].[Ajustes_Venta]) as B

-------------------------------------------------------------------------------------------------------------------------------------------------

Select Distinct C.CLIENTE
	  ,VENUMERO
	  ,ANNUMERO
	  ,B.SIA
	  ,MESANIO
	Into #Planta2
From #Planta1 as A
Left Join (
			Select *
			From (

			Select Anexo
				   ,Indice
				   ,SIA
			From #Com
			Where SIA is not null


UNION ALL


	  SELECT [ANEXO]
      ,[INDICE]
      ,CONCAT([SITIO], ISNULL([INDICE_SITIO], ' '), AREA) as SIA
  FROM [DW_Insumos].[dbo].[MU_REFERENCIA_SITIO]) as B) as B
ON A.VENUMERO = B.ANEXO and A.ANNUMERO = B.INDICE
Left Join #Com as C
ON A.VENUMERO = C.ANEXO


Declare @Contador as int
Declare @Contador2 as int
Set @Contador2 = 1
Set @Contador = MONTH(GetDate()) - 1

Create Table #Planta3 (Cliente nvarchar(255)
					  ,SIA nvarchar(255)
					  ,MESANIO date)

While @Contador2 <= 12
Begin

Insert Into #Planta3
Select Distinct Cliente
	 ,SIA
	 ,MESANIO
From #Planta2
Where YEAR(MESANIO) = Case
						When @Contador = 0 Then YEAR(GETDATE()) - 1
						When @Contador = -1 Then YEAR(GETDATE()) - 1
						When @Contador = -2 Then YEAR(GETDATE()) - 1
						When @Contador = -3 Then YEAR(GETDATE()) - 1
						When @Contador = -4 Then YEAR(GETDATE()) - 1
						When @Contador = -5 Then YEAR(GETDATE()) - 1
						When @Contador = -6 Then YEAR(GETDATE()) - 1
						When @Contador = -7 Then YEAR(GETDATE()) - 1
						When @Contador = -8 Then YEAR(GETDATE()) - 1
						When @Contador = -9 Then YEAR(GETDATE()) - 1
						When @Contador = -10 Then YEAR(GETDATE()) - 1
						When @Contador = -11 Then YEAR(GETDATE()) - 1
						else YEAR(GETDATE())
					 End
AND
	MONTH(MESANIO) = Case
						When @Contador = 0 Then 12
						When @Contador = -1 Then 11
						When @Contador = -2 Then 10
						When @Contador = -3 Then 9
						When @Contador = -4 Then 8
						When @Contador = -5 Then 7
						When @Contador = -6 Then 6
						When @Contador = -7 Then 5
						When @Contador = -8 Then 4
						When @Contador = -9 Then 3
						When @Contador = -10 Then 2
						When @Contador = -11 Then 1
						Else @Contador
					 End

Set @Contador = @Contador - 1
Set @Contador2 = @Contador2 + 1
End


Select *
	 ,ROW_NUMBER () Over(PARTITION BY Cliente, SIA Order by MESANIO desc) as Cuenta
	Into #Planta4
From #Planta3


Select Distinct CLIENTE
	  ,SIA
	  ,MESANIO
From #Planta4 as A
Where Cuenta = 12 and SIA is not null


 ------------------------------------------------------------------------------------------------------------------------------------------------------


 Drop Table #Ventas
 Drop Table #VentasBus
 Drop Table #VentasMU
 Drop Table #COM
 Drop Table #Disp
 Drop TAble #Importe
 Drop Table #Planta1
 Drop Table #Planta2
 Drop Table #Planta3
 Drop Table #Planta4
