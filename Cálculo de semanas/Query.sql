Declare @Fecha_Actual datetime
Declare @Cuenta_Semana int
Declare @Ultima_Semana int
Declare @Dias_Semana int
Declare @Cuenta_Semana2 int
SET @Fecha_Actual = '20171229'
Set @Cuenta_Semana = 1
SET @Cuenta_Semana2 = 1

Create Table #Semanas(
Semana int,
Inicio_Semana date,
Semana_Virutal int)

While @Fecha_Actual < DATEADD(year, +3, GETDATE())
Begin
Insert Into #Semanas
Select Semana = @Cuenta_Semana
	   ,Inicio_Semana = @Fecha_Actual
	   ,Semana_Virtual = @Cuenta_Semana2

SET @Fecha_Actual = dateadd(day, +1, @Fecha_Actual)
SET @Ultima_Semana = (Select MAX(Semana_Virutal) From #Semanas)
Set @Dias_Semana = (Select COUNT(Semana_Virutal) From #Semanas Where Semana_Virutal = @Ultima_Semana)
SET @Cuenta_Semana = Case
						When @Dias_Semana >= 7 Then Case
														When @Cuenta_Semana <= 51 Then @Cuenta_Semana + 1
														Else @Cuenta_Semana -51
													End
						Else @Cuenta_Semana
					End
Set @Cuenta_Semana2 = Case
						When @Dias_Semana >= 7 Then @Cuenta_Semana2 + 1
						Else @Cuenta_Semana2
					  End
End

Select *
From #Semanas

Drop Table #Semanas