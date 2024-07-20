--Creacion de BD
Create database dbregistro
go
use dbregistro;
go
create table Ciudades(
IdCiudad int primary key identity(1,1),
Nombre nvarchar(60) not null,
Estado bit default 1
)
go
create table Personas(
IdPersona int primary key identity(1,1)
Nombre nvarchar(40) not null,
Apellidos nvarchar(40) not null,
IdCiudad int foreign key references Ciudades(IdCiudad),
Activo bit default 1
)
go

insert into Ciudades(nombre) values ('Masaya'),('Granada'),('Jinotepe'), ('Managua'),('Leon')
go
Insert into Personas(Nombre,Apellidos,IdCiudad)
Values('Belen', 'Acuña' , 4),
('Sergio', 'Rivas', 1),
('Erick', 'Martinez', 4)
go

Select * from Ciudades

select * from Personas
go
Select IdCiudad as 'codigo', nombre as'Ciudad', estado as 'Est' from Ciudades;

Select Personas.IdPersona as Codigo, Personas.Nombre+ ' ' + Personas.apellidos as 'Nombre Completo',
Ciudades.Nombre as Ciudad from Personas inner join Ciudades on Personas.IdCiudad = IdCiudad

declare @Nombre nvarchar(40)
set @Nombre = '%r%'

Select * from Personas where Nombre like @Nombre