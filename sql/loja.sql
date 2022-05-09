CREATE DATABASE loja;
USE loja;


CREATE TABLE endereco(
	id int AUTO_INCREMENT PRIMARY KEY,
    cep int(8),
    logradouro varchar(60),
    numero int(5)
);


CREATE TABLE cliente(
    id int AUTO_INCREMENT PRIMARY KEY,
    id_endereco int,
    nome varchar(50) NOT NULL,
    email varchar(50),
    data_nasc date,
    FOREIGN KEY (id_endereco) REFERENCES endereco(id)
);


CREATE TABLE setor(
  id int(11) AUTO_INCREMENT PRIMARY KEY,
  nome varchar(50),
  nr_funcionarios int(7)
);


CREATE TABLE vendedor(
    id int AUTO_INCREMENT PRIMARY KEY,
    id_setor int,
    nome varchar(50),
    ramal int (5),
    data_nascimento date,
    
    FOREIGN key (id_setor) REFERENCES setor(id)
);


ALTER TABLE cliente ADD(
	sexo char(1),
    nr_compras int
);


CREATE TABLE venda(
	id int AUTO_INCREMENT PRIMARY KEY,
    id_cliente int,
    id_vendedor int,
    total_itens int,
    valor_total float(10,2),
    data_venda datetime,
    FOREIGN KEY (id_cliente) REFERENCES cliente (id),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor (id) 
);


CREATE TABLE produto(
	id int PRIMARY KEY,
    nome varchar(50),
    descricao text,
    logo varchar(50)
);


ALTER TABLE produto add(
	estoque int,
    preco float(10,2)
);


