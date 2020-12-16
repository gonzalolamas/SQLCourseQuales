CREATE TABLE DimPersona (
	ID int IDENTITY(1,1) not null ,
	Nombre varchar(255) not null,
    Apellido varchar(255) not null,
	Edad int not null,
	Peso decimal(18,2) null
)