create database cofre
use cofre

create table grupo(
id int not null,
grupo varchar(255) not null,
descricao varchar(255) not null,
usuario varchar(255) not null,
senha varchar(255),
constraint PK_id primary key(id)
)