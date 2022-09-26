DROP SCHEMA IF EXISTS mecanica;
CREATE SCHEMA mecanica;
USE mecanica;

-- -----------------------------------------------------
-- Table Cliente
-- -----------------------------------------------------
CREATE TABLE Cliente (
  idCliente INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NULL,
  CPF VARCHAR(15) NULL,
  telefone VARCHAR(45) NULL,
  email VARCHAR(30) NOT NULL,
  estado enum('RJ','SP','SC','BA') NOT NULL,
  PRIMARY KEY (idCliente),  
  CONSTRAINT idUNIQUE UNIQUE (idCliente),
  CONSTRAINT CPF_UNIQUE UNIQUE (CPF),
  CONSTRAINT email_UNIQUE UNIQUE (email));

-- -----------------------------------------------------
-- Table Veiculo
-- -----------------------------------------------------
CREATE TABLE Veiculo (
  idVeiculo INT NOT NULL AUTO_INCREMENT,
  idCliente INT NOT NULL,
  fabricante VARCHAR(20) NULL,
  modelo VARCHAR(20) NULL,
  chassi CHAR(17) NULL,
  ano CHAR(4) NULL,
  PRIMARY KEY (idVeiculo, idCliente),
  CONSTRAINT fk_Veiculo_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente));

-- -----------------------------------------------------
-- Table Pedido
-- -----------------------------------------------------
CREATE TABLE Pedido (
  idPedido INT NOT NULL AUTO_INCREMENT,
  idCliente INT NOT NULL,
  descricao VARCHAR(100) NULL,
  dataPedido DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (idPedido),
  CONSTRAINT fk_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente));

-- -----------------------------------------------------
-- Table OS
-- -----------------------------------------------------
CREATE TABLE OS (
  idOS INT NOT NULL AUTO_INCREMENT,
  idPedido INT NOT NULL,
  numero BIGINT NULL,
  dataEmissao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  valor FLOAT NULL,
  dataConclusao DATETIME NULL,
  PRIMARY KEY (idOS),
  CONSTRAINT numeroUNIQUE UNIQUE (numero),
  CONSTRAINT fk_OS_Pedido FOREIGN KEY (idPedido) REFERENCES Pedido (idPedido));

-- -----------------------------------------------------
-- Table Equipe
-- -----------------------------------------------------
CREATE TABLE Equipe (
  idEquipe INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NULL,
  PRIMARY KEY (idEquipe));

-- -----------------------------------------------------
-- Table Servico
-- -----------------------------------------------------
CREATE TABLE Servico (
  idServico INT NOT NULL AUTO_INCREMENT,
  idEquipe INT NOT NULL,
  tipo VARCHAR(45) NULL,
  valor FLOAT NULL,
  PRIMARY KEY (idServico),
  CONSTRAINT fk_equipe FOREIGN KEY (idEquipe) REFERENCES equipe (idEquipe));

-- -----------------------------------------------------
-- Table Peca
-- -----------------------------------------------------
CREATE TABLE Peca (
  idPeca INT NOT NULL AUTO_INCREMENT,
  idServico INT NOT NULL,
  nome VARCHAR(45) NULL,
  descricao VARCHAR(45) NULL,
  valor FLOAT NULL,
  PRIMARY KEY (idPeca),
  CONSTRAINT fk_Peca_servico FOREIGN KEY (idServico) REFERENCES servico (idServico));

-- -----------------------------------------------------
-- Table Mecanico
-- -----------------------------------------------------
CREATE TABLE Mecanico (
  idMecanico INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NULL,
  CPF VARCHAR(15) NULL,
  endereco VARCHAR(45) NULL,
  especialidade VARCHAR(45) NULL,
  PRIMARY KEY (idMecanico),
  CONSTRAINT CPF_M_UNIQUE UNIQUE (CPF));

-- -----------------------------------------------------
-- Table EquipeMecanico
-- -----------------------------------------------------
CREATE TABLE EquipeMecanico (
  idEquipe INT NOT NULL,
  idMecanico INT NOT NULL,
  PRIMARY KEY (idEquipe, idMecanico),
  CONSTRAINT fk_EquipeMecanico_Mecanico FOREIGN KEY (idMecanico) REFERENCES Mecanico (idMecanico),
  CONSTRAINT fk_EquipeMecanico_Equipe FOREIGN KEY (idEquipe) REFERENCES Equipe (idEquipe));

-- -----------------------------------------------------
-- Table PedidoEquipe
-- -----------------------------------------------------
CREATE TABLE PedidoEquipe (
  idPedido INT NOT NULL,
  idEquipe INT NOT NULL,
  status enum('Aberto','Iniciado','Concluido') NOT NULL,
  PRIMARY KEY (idPedido, idEquipe),
  CONSTRAINT fk_PedidoEquipe_Pedido FOREIGN KEY (idPedido) REFERENCES Pedido (idPedido),
  CONSTRAINT fk_PedidoEquipe_Equipe FOREIGN KEY (idEquipe) REFERENCES Equipe (idEquipe));