--Criando meu primeiro bd
--create database pratica_1
--use pratica_1

--vamos criar as tabelas que não possuem FK

--create table tblfunc
--(
--mat int not null,
--nomefunc varchar (255) not null,
--datanasc date,
--constraint pkfunc primary key (mat)
--)

--create table tblprojeto
--(
--codproj int not null,
--nomeproj varchar (255) not null,
--constraint pkproj primary key (codproj)
--)

--create table tblalocado
--(
--mat int not null,
--codproj int not null,
--horas int,
--constraint pkaloc primary key(mat,codproj),
--constraint fkproj foreign key(codproj)
--references tblprojeto(codproj),
--constraint fkfunc foreign key(mat)
--references tblfunc(mat)
--)

--create database exercicio_1
--use exercicio_1

create table curso
(
codcurso int not null,
nomecurso varchar(255) not null,
constraint pkcurso primary key(codcurso)
)

create table disciplina
(
iddisc int not null,
nomedisc varchar(255) not null,
constraint pkdisc primary key(iddisc)
)

create table grade
(
iddisc int not null,
codcurso int not null,
cargahoraria int,
constraint pklock primary key(iddisc,codcurso),
constraint fkey foreign key(iddisc)
references disciplina(iddisc),
constraint fkey1 foreign key(codcurso)
references curso(codcurso)
)
