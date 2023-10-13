-- Criar Tabela
CREATE DATABASE empresa;

-- Usar Banco de Dados
USE empresa;

-- Criar Tabela
CREATE TABLE Clientes(
  Id int primary key auto_increment,
  Nome varchar(255) not null ,
  DataNascimento date not null,
  Telefone varchar(17) not null unique
);

CREATE TABLE Endereco(
  EndId int primary key auto_increment,
  Logradouro varchar(255) not null,
  Numero varchar (6) not null,
  Cidade varchar (255) not null
);

CREATE TABLE Cadastrados(
 CadastID int primary key auto_increment,
 ClienteID int,
 EnderecoID int,
 Foreign key (ClienteID) references Clientes(Id),
 Foreign key (EnderecoID) references Endereco(EndId)
);

-- Inserir Valores Clientes

INSERT INTO Clientes (Nome, DataNascimento, Telefone)  VALUES
("Bruno", "1999-02-12", "(71)91234-1221");

INSERT INTO Clientes (Nome, DataNascimento, Telefone)  VALUES
("Carlos", "2000-07-10", "(71)93333-1228");

INSERT INTO Clientes (Nome, DataNascimento, Telefone)  VALUES
("Fagundes", "2001-06-09", "(71)94444-1222");

INSERT INTO Clientes (Nome, DataNascimento, Telefone)  VALUES
("Julia", "2002-03-02", "(71)95555-1223");

INSERT INTO Clientes (Nome, DataNascimento, Telefone)  VALUES
("Maria", "2003-04-19", "(71)96666-1224");

-- Inserir Valores Endereco

INSERT INTO Endereco (Logradouro, Numero, Cidade) VALUES
("Vila Jacó", "400a", "Salvador");

INSERT INTO Endereco (Logradouro, Numero, Cidade) VALUES
("Rua do Lírio", "401b", "Salvador");

INSERT INTO Endereco (Logradouro, Numero, Cidade) VALUES
("Avenida São Roque", "402c", "Salvador");

INSERT INTO Endereco (Logradouro, Numero, Cidade) VALUES
("Rua Miguelito", "403c", "Salvador");

INSERT INTO Endereco (Logradouro, Numero, Cidade) VALUES
("Rua Elisabete", "404c", "Salvador");

-- Chamar Tabelas

INSERT INTO Cadastrados (ClienteID, EnderecoID) VALUES
(1, 1);

INSERT INTO Cadastrados (ClienteID, EnderecoID) VALUES
(2, 2);

INSERT INTO Cadastrados (ClienteID, EnderecoID) VALUES
(3, 3);

INSERT INTO Cadastrados (ClienteID, EnderecoID) VALUES
(4, 4);

INSERT INTO Cadastrados (ClienteID, EnderecoID) VALUES
(5, 5);

-- Select

SELECT
C.Nome AS "Nome do Morador",
E.Logradouro as "Logradouro"
FROM Clientes C
INNER JOIN Cadastrados CA on C.Id = CA.ClienteID
INNER JOIN Endereco E on CA.EnderecoID = E.EndId;

-- Apagar Tabela
DROP DATABASE empresa;