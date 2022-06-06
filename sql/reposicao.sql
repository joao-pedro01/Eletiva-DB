CREATE DATABASE empresa;


create table produtos (
id int key auto_increment,
produto varchar(60),
estoque int,
valor float(8,2),
tipo varchar(60),
unidade varchar(10),
marca varchar(25),
data_fabricacao date
);


insert into produtos values (null, 'Arroz Integral',100,15.00,'Alimentos','KG','Tio João','2016-01-20');
insert into produtos values (null, 'Blu-Ray Player',25,550.00,'Eletrônico','Peça','Sony','2015-10-25');
insert into produtos values (null, 'Notebook i7',10,2850.00,'Eletrônico','Peça','Samsung','2015-05-30');
insert into produtos values (null, 'Iphone 5',30,2500.00,'Eletrônico','Peça','Apple','2016-02-10'); (...continua)


update produtos set valor = 13.00, marca = 'panela de ferro', data_fabricacao = '05-05-2014', tipo = 'pacote' where produto = 'arroz integral';
update produtos set valor = 25.00, data_fabricacao = '2016-03-30' where tipo = 'cosmeticos';


select avg(valor) as media_eletro from produtos where tipo = 'eletrodomestico';


delete from produtos where valor > 300.00 and id > 8;


select produto, estoque, valor from produtos;


show tables;
select * from produtos;
select max(valor) as maior_valor from produtos;
select produto, valor from produtos where valor < 18.00 and tipo = 'alimentos';
select produto, valor from produtos order by produto desc;
select produto, valor from produtos order by valor desc;


delete from produtos;