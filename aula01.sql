CREATE TABLE Pais(
    id_pais     NUMBER Generated Always As Identity,
    nome        VARCHAR2(30),
    Primary key(id_pais)
);

CREATE TABLE Estado (
    id_estado     NUMBER Generated Always As Identity,
    nome        VARCHAR2(30),
    id_pais    NUMBER,
    Primary key(id_estado)
);
Alter Table Estado ADD Constraint fk_estado Foreign Key (id_pais )References Pais;


CREATE TABLE Cidade (
    id_cidade    NUMBER Generated Always As Identity,
    nome         VARCHAR2(30),
    id_estado    NUMBER,
    Primary key(id_cidade)
);
Alter Table Cidade ADD Constraint fk_cidade Foreign Key (id_estado) References Estado;


CREATE TABLE Bairro (
    id_bairro    NUMBER Generated Always As Identity,
    nome         VARCHAR2(30),
    id_cidade    NUMBER,
    Primary key(id_bairro)
);
Alter Table Bairro ADD Constraint fk_bairro Foreign Key (id_cidade) References Cidade;

CREATE TABLE Endereco (
    id_endereco    NUMBER Generated Always As Identity,
    nome         VARCHAR2(30),
    id_bairro    NUMBER,
    Primary key(id_endereco)
);
Alter Table Endereco ADD Constraint fk_endereco Foreign Key (id_bairro) References Bairro;


CREATE TABLE Cliente (
    id_cliente    NUMBER Generated Always As Identity,
    nome          VARCHAR2(30),
    id_endereco   NUMBER,
    Primary key(id_cliente)
);
Alter Table Cliente ADD Constraint fk_cliente Foreign Key (id_cliente) References Cliente;


INSERT INTO Pais(nome) VALUES ('Brasil');
INSERT INTO Estado(nome, id_pais) VALUES ('Rio de Janeiro', 1);
INSERT INTO Cidade(nome, id_estado) VALUES ('Rio de Janeiro', 1);
INSERT INTO Bairro(nome, id_cidade) VALUES ('Copacabana', 1);
INSERT INTO Endereco(nome, id_bairro) VALUES ('Praia de Copacabana', 1);
INSERT INTO Cliente(nome, id_endereco) VALUES ('Copacabana', 1);


INSERT INTO pais(nome) VALUES ('França');
INSERT INTO Estado(nome, id_pais) VALUES ('Paris', 2);
INSERT INTO Cidade(nome, id_estado) VALUES ('O Grand Est', 2);
INSERT INTO Bairro(nome, id_cidade) VALUES ('Copacabana', 2);
INSERT INTO Endereco(nome, id_bairro) VALUES ('Praia de Copacabana', 2);
INSERT INTO Cliente(nome, id_endereco) VALUES ('Gabriel', 2);



INSERT INTO pais(nome) VALUES ('Itália');
INSERT INTO pais(nome) VALUES ('Brasil');
INSERT INTO pais(nome) VALUES ('Espanha');