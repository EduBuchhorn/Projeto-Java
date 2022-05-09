create database Dinossauros;

create table Grupos(
id_grupo int not null auto_increment,
nome varchar (50) not null,
primary key (id_grupo)
);


create table Pais(
id_pais int not null auto_increment,
nome varchar(50),
primary key (id_pais)
);


create table Descobridor(
id_descobridor int not null auto_increment,
nome varchar (50) not null,
primary key (id_descobridor)
);


create table Era(
id_era int not null auto_increment,
nome varchar (50),
inicio int not null,
fim int not null,
primary key (id_era)
);


create table Dinossauros(
id_dinossauro int not null auto_increment,
nome varchar (50) not null,
peso int not null,
ano_descoberta int not null,
fk_id_grupos int not null,
fk_id_pais int not null,
fk_id_era int not null,
fk_id_descobridor int not null,
primary key (id_dinossauro),
foreign key (fk_id_grupo) references Grupos (id_grupo),
foreign key (fk_id_pais) references Pais (id_pais),
foreign key (fk_id_era) references Era (id_era),
foreign key (fk_id_descobridor) references Descobridor (id_descobridor)
);


insert into grupos (nome) values ('Anquilossauros');
insert into grupos (nome) values ('Ceratopsídeos');
insert into grupos (nome) values ('Estegossauro');
insert into grupos (nome) values ('Anquilossauros');
insert into grupos (nome) values ('Terápodes');
insert into grupos (nome) values ('Ceratopsídeos');
insert into grupos (nome) values ('Anquilossauros');


insert into pais (nome) values ('Mongólia');
insert into pais (nome) values ('Canadá');
insert into pais (nome) values ('Tanzânia');
insert into pais (nome) values ('China');
insert into pais (nome) values ('América do Norte');
insert into pais (nome) values ('USA');
insert into pais (nome) values ('América do Norte');


insert into descobridor (nome) values ('Maryanska');
insert into descobridor (nome) values ('John Bell Hatcher');
insert into descobridor (nome) values ('Cientista Alemães');
insert into descobridor (nome) values ('Museu Americano de História Natural');
insert into descobridor (nome) values ('Othniel Charles Marsh');
insert into descobridor (nome) values ('John Bell Hatcher');
insert into descobridor (nome) values ('Barnum Brown');

insert into era (nome , inicio, fim) values ('Cretáceo', 145, 66);
insert into era (nome , inicio, fim) values ('Cretáceo', 70,66);
insert into era (nome , inicio, fim) values ('Jurássico', 201, 145);
insert into era (nome , inicio, fim) values ('Cretáceo', 85, 75);
insert into era (nome , inicio, fim) values ('Jurássico', 155,150);
insert into era (nome , inicio, fim) values ('Cretáceo', 67, 65);
insert into era (nome , inicio, fim) values ('Cretáceo', 66,63);


insert into dinossauros(nome,peso,ano_descoberta,fk_id_grupos,fk_id_pais,fk_id_era,fk_id_descobridor) values ('Saichaina',4,1977,1,1,1,1);
insert into dinossauros(nome,peso,ano_descoberta,fk_id_grupos,fk_id_pais,fk_id_era,fk_id_descobridor) values ('Tricerátops',6,1887,2,2,2,1);
insert into dinossauros(nome,peso,ano_descoberta,fk_id_grupos,fk_id_pais,fk_id_era,fk_id_descobridor) values ('Kentrossaueo',2,1909,3,3,3,2);
insert into dinossauros(nome,peso,ano_descoberta,fk_id_grupos,fk_id_pais,fk_id_era,fk_id_descobridor) values ('Pinacossauro',6,1999,1,4,4,1);
insert into dinossauros(nome,peso,ano_descoberta,fk_id_grupos,fk_id_pais,fk_id_era,fk_id_descobridor) values ('Alossauro',3,1877,4,5,5,2);
insert into dinossauros(nome,peso,ano_descoberta,fk_id_grupos,fk_id_pais,fk_id_era,fk_id_descobridor) values ('Torossauro',8,1891,2,6,2,1);
insert into dinossauros(nome,peso,ano_descoberta,fk_id_grupos,fk_id_pais,fk_id_era,fk_id_descobridor) values ('Anquilossauro',8,1906,1,5,6,1);


update dinossauros set nome= 'Kentrossauro' where id_dinossauro=6;


show create table dinossauros;
alter table dinossauros drop foreign key dinossauros_ibfk_1;
alter table dinossauros drop foreign key dinossauros_ibfk_2;
alter table dinossauros drop foreign key dinossauros_ibfk_3;
alter table dinossauros drop foreign key dinossauros_ibfk_4;


delete from grupos where id_grupo = 9;


select * from era;
select * from pais;
select * from descobridor;
select * from dinossauros;
select * from grupos;


select * from dinossauros;


select dinossauros.nome as 'Dinossauro', grupos.nome as 'Grupo',dinossauros.peso as 'Toneladas',dinossauros.ano_descoberta as 'Ano de Descoberta', descobridor.nome as 'Descobridor',era.nome as 'Era', era.inicio as 'Início/Milhões', era.fim as 'Fim/Milhões', pais.nome as 'País'
from dinossauros, grupo,era,pais,descobridor 
 where dinossauros.fk_id_grupos = grupos.id_grupos
and dinossauros.fk_id_pais = pais.id_pais and dinossauros.fk_id_descobridor = descobridor.id_descobridor and dinossauros.fk_id_era = era.id_era
order by dinossauros.nome;