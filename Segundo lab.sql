create database Dui;

use Dui;

create table personas(
Id_Persona int primary key auto_increment,
Nombre varchar(10),
Dui varchar(50)
);

insert into personas(Id_Persona,Nombre,Dui) value(1,"Pedro","88888888-9");
insert into personas(Id_Persona,Nombre,Dui) value(2,"Juan","77777777-8");
insert into personas(Id_Persona,Nombre,Dui) value(3,"Luis","66666666-7");
insert into personas(Id_Persona,Nombre,Dui) value(4,"Adrian","55555555-4");