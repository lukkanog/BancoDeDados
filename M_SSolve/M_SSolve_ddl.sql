CREATE DATABASE M_SSolve;

USE M_SSolve;

CREATE TABLE Funcionarios(
	IdFuncionario INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL
	,Salario MONEY NOT NULL
);

CREATE TABLE Clientes(
	IdCliente INT PRIMARY KEY IDENTITY
	,NomeFantasia VARCHAR(200) NOT NULL
	,CNPJ CHAR(18) UNIQUE NOT NULL
	,RazaoSocial VARCHAR(200) NOT NULL
	,Endereco VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE Servicos(
	IdServico INT PRIMARY KEY IDENTITY
	,Descricao VARCHAR(255) NOT NULL
	,Comodo VARCHAR(120) NOT NULL
	,DataInicio DATETIME NOT NULL
	,DataTermino DATETIME NOT NULL
	,Valor MONEY NOT NULL
	,IdCliente INT FOREIGN KEY REFERENCES Clientes(IdCliente) NOT NULL
);

CREATE TABLE FuncionariosServicos(
	IdServico INT FOREIGN KEY REFERENCES Servicos(IdServico)
	,IdFuncionario INT FOREIGN KEY REFERENCES Funcionarios(IdFuncionario)
);
