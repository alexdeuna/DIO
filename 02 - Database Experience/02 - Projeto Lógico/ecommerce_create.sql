DROP SCHEMA IF EXISTS ecommerce;
CREATE SCHEMA ecommerce;
USE ecommerce ;

-- -----------------------------------------------------
-- Table Cliente
-- -----------------------------------------------------
CREATE TABLE Cliente (
  idCliente INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(30) NOT NULL,
  endereco VARCHAR(50) NOT NULL,
  estado enum('RJ','SP','SC','BA') NOT NULL,
  PRIMARY KEY (idCliente),
  CONSTRAINT idCliente_UNIQUE UNIQUE (idCliente),
  CONSTRAINT email_UNIQUE UNIQUE (email) );

-- -----------------------------------------------------
-- Table Pedido
-- -----------------------------------------------------
CREATE TABLE Pedido (
  idPedido INT NOT NULL AUTO_INCREMENT,
  idCliente INT NOT NULL,
  descricao VARCHAR(45) NULL,
  frete FLOAT NULL DEFAULT 0,
  rastreio VARCHAR(45) NULL,
  PRIMARY KEY (idPedido),
  CONSTRAINT fk_Pedido_Cliente
    FOREIGN KEY (idCliente)
    REFERENCES Cliente (idCliente));

-- -----------------------------------------------------
-- Table Produto
-- -----------------------------------------------------
CREATE TABLE Produto (
  idProduto INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  descricao VARCHAR(300) NOT NULL,
  valor FLOAT NULL,
  PRIMARY KEY (idProduto));

-- -----------------------------------------------------
-- Table Fornecedor
-- -----------------------------------------------------
CREATE TABLE Fornecedor (
  idFornecedor INT NOT NULL AUTO_INCREMENT,
  razaoSocial VARCHAR(45) NULL,
  CNPJ VARCHAR(18) NULL,
  PRIMARY KEY (idFornecedor),
  CONSTRAINT CNPJ_UNIQUE UNIQUE (CNPJ) );

-- -----------------------------------------------------
-- Table Estoque
-- -----------------------------------------------------
CREATE TABLE Estoque (
  idEstoque INT NOT NULL AUTO_INCREMENT,
  endereco VARCHAR(50) NULL,
  estado enum('RJ','SP','SC','BA','MG') NOT NULL,
  PRIMARY KEY (idEstoque));

-- -----------------------------------------------------
-- Table ProdutoFornecedor
-- -----------------------------------------------------
CREATE TABLE ProdutoFornecedor (
  idProduto INT NOT NULL,
  idFornecedor INT NOT NULL,
  PRIMARY KEY (idProduto, idFornecedor),
  CONSTRAINT fk_ProdutoFornecedor_Produto FOREIGN KEY (idProduto) REFERENCES Produto (idProduto),
  CONSTRAINT fk_ProdutoFornecedor_Fornecedor FOREIGN KEY (idFornecedor) REFERENCES Fornecedor (idFornecedor));

-- -----------------------------------------------------
-- Table EstoqueProduto
-- -----------------------------------------------------
CREATE TABLE EstoqueProduto (
  idProduto INT NOT NULL,
  idEstoque INT NOT NULL,
  quantidade INT NULL DEFAULT 0,
  PRIMARY KEY (idProduto, idEstoque),
  CONSTRAINT fk_ProdutoEstoque_Produto FOREIGN KEY (idProduto) REFERENCES Produto (idProduto),
  CONSTRAINT fk_ProdutoEstoque_Estoque FOREIGN KEY (idEstoque) REFERENCES Estoque (idEstoque));

-- -----------------------------------------------------
-- Table ProdutoPedido
-- -----------------------------------------------------
CREATE TABLE ProdutoPedido (
  idPedido INT NOT NULL,
  idProduto INT NOT NULL,
  quantidade INT NULL DEFAULT 0,
  PRIMARY KEY (idPedido, idProduto), 
  CONSTRAINT fk_PedidoProduto_Pedido FOREIGN KEY (idPedido) REFERENCES Pedido (idPedido),
  CONSTRAINT fk_PedidoProduto_Produto FOREIGN KEY (idProduto) REFERENCES Produto (idProduto));
  
-- -----------------------------------------------------
-- Table CpfCliente
-- -----------------------------------------------------
CREATE TABLE CpfCliente (
  idCpfCliente INT NOT NULL AUTO_INCREMENT,
  idCliente INT NOT NULL,
  nome VARCHAR(45) NOT NULL,
  CPF VARCHAR(15) NOT NULL,
  PRIMARY KEY (idCpfCliente),
  CONSTRAINT CPF_UNIQUE UNIQUE (CPF),
  CONSTRAINT fk_CPF_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente));

-- -----------------------------------------------------
-- Table CnpjCliente
-- -----------------------------------------------------
CREATE TABLE CnpjCliente (
  idCnpjCliente INT NOT NULL AUTO_INCREMENT,
  idCliente INT NOT NULL,
  razaoSocial VARCHAR(50) NOT NULL,
  CNPJ VARCHAR(18) NOT NULL,
  PRIMARY KEY (idCnpjCliente),
  CONSTRAINT CNPJ_UNIQUE UNIQUE (CNPJ),
  CONSTRAINT fk_CNPJ_Cliente FOREIGN KEY (idCliente) REFERENCES Cliente (idCliente));