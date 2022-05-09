CREATE DATABASE portalweb;
USE portalweb;

CREATE TABLE usuario(
    id int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(50),
    email varchar(50),
    senha varchar(25)
);


CREATE TABLE noticia(
    id int AUTO_INCREMENT PRIMARY KEY,
    id_usuario int,
    titulo varchar(50),
    texto text,
    data_publicacao date,
    
    FOREIGN KEY (id_usuario) REFERENCES usuario (id)
);

CREATE TABLE imagems(
    id int AUTO_INCREMENT PRIMARY KEY,
    descricao text,
    endereco varchar(50)
);

CREATE TABLE imagem_noticia(
    id_noticia int,
    id_imagem int,
    
	FOREIGN KEY (id_noticia) REFERENCES noticia (id),
    FOREIGN KEY (id_imagem) REFERENCES imagem (id)
);