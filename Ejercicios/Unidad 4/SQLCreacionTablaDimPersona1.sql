CREATE TABLE DimPersona (
	[ID][int] IDENTITY(1,1) not null ,
	[Nombre][nvarchar](255) not null,
    [Apellido][nvarchar](255) not null,
	[Edad][int] not null,
	[Peso][decimal](18,2) null
) on [Primary]