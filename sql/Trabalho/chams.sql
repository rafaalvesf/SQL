create database chams
use chams
create table usuario(
usuario varchar(255) not null,
Senha varchar(255) not null,
perfil bit,
constraint PK_usuario primary key(usuario)
)

create table setor(
setor varchar(255) not null,
localidade varchar(255) not null,
constraint PK_setor primary key(setor)
)

create table funcionarios(
nome varchar(255) not null, 
setor varchar(255) not null,
email varchar(255),
ramal varchar(15),
constraint PK_funcionarios primary key(nome),
constraint FK_setor foreign key(setor) references setor(setor)
)

create table chamado(
Id_chamado int not null identity,
prioridade varchar(255) not null,
andamento varchar(255) not null,
motivo varchar(1000) not null,
atendente varchar(255),
solucao varchar(1000) not null,
solicitante varchar(255) not null,
constraint PK_chamado primary key(Id_chamado),
constraint FK_atendente foreign key(atendente) references usuario(usuario),
constraint FK_solicitante foreign key(solicitante) references funcionarios(nome)
)