-- Criar Tabela
CREATE DATABASE Empresa;

-- Usar Tabela
Use Empresa;

-- Criar Tabelas
CREATE TABLE Funcionarios(
 Id int auto_increment primary key,
 DepartID int,
 Nome varchar (255) not null,
 Cargo varchar (255) not null,
 DataContratacao date not null,
 Salario float not null,
 Foreign key (DepartID) references Departamentos(Id)
);

CREATE TABLE Dependentes(
 Id int auto_increment primary key,
 FuncID int,
 Nome varchar (255) not null,
 DataNascimento date not null,
 Foreign key (FuncID) references Funcionarios(Id)
);

CREATE TABLE Departamentos(
 Id int auto_increment primary key,
 Nome varchar (255) not null
);	

-- Inserir Valor Funcionários

INSERT INTO Funcionarios (DepartID, Nome, Cargo, DataContratacao, Salario) VALUES
(1, "Jubileu", "Mecânico", "2010-09-12" , "1900.00");

INSERT INTO Funcionarios (DepartID, Nome, Cargo, DataContratacao, Salario) VALUES
(3,"Fagundes", "Eletricista", "2005-09-12" , "5900.00");
-- Inserir Valores Dependentes

INSERT INTO Dependentes (FuncID, Nome, DataNascimento) VALUES
(1,"Fernandinho", "2004-04-20");

-- Inserir Valores Departamentos 
INSERT INTO Departamentos (Nome) VALUES
("Manutenção");

-- Select

Select
F.Nome as "Nome do Funcionário",
D.Nome as "Nome do Departamento",
DE.Nome as "Nome do Dependente"
from Funcionarios F
inner join Departamentos D on D.Id = F.DepartID
left join Dependentes DE on DE.FuncID = F.Id;



SELECT * FROM Funcionarios;

DROP DATABASE Empresa;