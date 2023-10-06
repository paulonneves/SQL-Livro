CREATE DATABASE BaseTeste;

CREATE TABLE Carro (
	Placa CHAR(10) PRIMARY KEY,
	Marca CHAR(20) NOT NULL,
	Modelo CHAR(20) NOT NULL,
	Cor CHAR(20),
	Cilindrada INTEGER
);

CREATE TABLE Pessoa (
	RG CHAR(15) PRIMARY KEY,
	Nome CHAR(60) NOT NULL,
	Endereco CHAR(120),
	Placa CHAR(10) NOT NULL REFERENCES Carro(Placa)
);

INSERT INTO Carro(Placa, Marca, Modelo, 
				 Cor, Cilindrada)
				 VALUES('45-77-AA', 'FIAT', 'Uno',
					   'Cinzento', 1100);

INSERT INTO Carro(Placa, Marca, Modelo, 
				 Cor, Cilindrada)
				 VALUES('21-05-EN', 'OPEL', 'Astra',
					   'Cinzento', 1400);

INSERT INTO Carro VALUES ('81-99-HT', 'Citroen', 'Xantia',
						 'Azul Metalizado', 1640);

INSERT INTO Pessoa (RG, Nome, Endereco, Placa)
VALUES ('12345', 'Marilia', 'Rua X', '81-99-HT');

INSERT INTO Pessoa (RG, Nome, Endereco, Placa)
VALUES ('23456', 'Cidalia', 'Rua Y', '45-77-AA');

INSERT INTO Pessoa (RG, Nome, Endereco, Placa)
VALUES ('34567', 'Celia', 'Rua Z', '81-99-HT');
