CREATE DATABASE db_ecoSystem;
USE db_ecoSystem;

CREATE TABLE tb_usuario(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
email VARCHAR(255) NOT NULL,
genero VARCHAR(255) NOT NULL,
cpf VARCHAR(255) NOT NULL,
cnpj VARCHAR(255) NOT NULL,
senha VARCHAR(255) NOT NULL,
telefone VARCHAR(255) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES tb_tipo_usuario(id),
FOREIGN KEY (id) REFERENCES tb_endereco(id)
);

CREATE TABLE tb_endereco(
id BINARY(16) NOT NULL,
logradouro VARCHAR(255) NOT NULL,
numero VARCHAR(255) NOT NULL,
bairro VARCHAR(255) NOT NULL,
cidade VARCHAR(255) NOT NULL,
estado VARCHAR(255) NOT NULL,
cep VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_tipo_usuario(
id BINARY(16) NOT NULL,
tipo_usuario TINYINT,
PRIMARY KEY (id)
);

CREATE TABLE tb_coleta(
id BINARY(16) NOT NULL,
horario VARCHAR(255) NOT NULL,
status_coleta VARCHAR(255) NOT NULL,
FOREIGN KEY (id) REFERENCES tb_anuncio(id),
FOREIGN KEY (id) REFERENCES tb_usuario(id),
PRIMARY KEY (id)
);

CREATE TABLE tb_anuncio(
id BINARY(16) NOT NULL,
observacao VARCHAR(255) NOT NULL,
FOREIGN KEY (id ) REFERENCES tb_tipo_usuario(id),
FOREIGN KEY (id) REFERENCES tb_produto(id),
PRIMARY KEY (id)
);

CREATE TABLE tb_produto(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
quantidade VARCHAR(255) NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES tb_categoria(id)
);

CREATE TABLE tb_categoria(
id BINARY(16) NOT NULL,
nome VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);