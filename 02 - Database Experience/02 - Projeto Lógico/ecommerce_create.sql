drop schema IF  EXISTS `ecommerce`;

CREATE SCHEMA IF NOT EXISTS `ecommerce`;
USE `ecommerce` ;

-- -----------------------------------------------------
-- Table `ecommerce`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(30) NOT NULL,
  `endereco` VARCHAR(50) NOT NULL,
  `estado` enum('RJ','SP','SC','BA') NOT NULL,
  PRIMARY KEY (`idCliente`),
  CONSTRAINT`idCliente_UNIQUE` UNIQUE (`idCliente`),
  CONSTRAINT `email_UNIQUE` UNIQUE (`email`) );

-- -----------------------------------------------------
-- Table `ecommerce`.`Pedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Pedido` (
  `idPedido` INT NOT NULL AUTO_INCREMENT,
  `idCliente` INT NOT NULL,
  `descricao` VARCHAR(45) NULL,
  `frete` FLOAT NULL DEFAULT 0,
  `rastreio` VARCHAR(45) NULL,
  PRIMARY KEY (`idPedido`),
  CONSTRAINT `fk_Pedido_Cliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `ecommerce`.`Cliente` (`idCliente`));

-- -----------------------------------------------------
-- Table `ecommerce`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Produto` (
  `idProduto` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(300) NOT NULL,
  `valor` FLOAT NULL,
  PRIMARY KEY (`idProduto`));

-- -----------------------------------------------------
-- Table `ecommerce`.`Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Fornecedor` (
  `idFornecedor` INT NOT NULL AUTO_INCREMENT,
  `razaoSocial` VARCHAR(45) NULL,
  `CNPJ` VARCHAR(18) NULL,
  PRIMARY KEY (`idFornecedor`),
  CONSTRAINT `CNPJ_UNIQUE` UNIQUE (`CNPJ`) );

-- -----------------------------------------------------
-- Table `ecommerce`.`Estoque`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`Estoque` (
  `idEstoque` INT NOT NULL AUTO_INCREMENT,
  `endereco` VARCHAR(50) NULL,
  `estado` enum('RJ','SP','SC','BA','MG') NOT NULL,
  PRIMARY KEY (`idEstoque`));

-- -----------------------------------------------------
-- Table `ecommerce`.`ProdutoFornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`ProdutoFornecedor` (
  `idProduto` INT NOT NULL,
  `idFornecedor` INT NOT NULL,
  PRIMARY KEY (`idProduto`, `idFornecedor`),
  CONSTRAINT `fk_ProdutoFornecedor_Produto` FOREIGN KEY (`idProduto`) REFERENCES `ecommerce`.`Produto` (`idProduto`),
  CONSTRAINT `fk_ProdutoFornecedor_Fornecedor` FOREIGN KEY (`idFornecedor`) REFERENCES `ecommerce`.`Fornecedor` (`idFornecedor`));

-- -----------------------------------------------------
-- Table `ecommerce`.`EstoqueProduto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`EstoqueProduto` (
  `idProduto` INT NOT NULL,
  `idEstoque` INT NOT NULL,
  `quantidade` INT NULL DEFAULT 0,
  PRIMARY KEY (`idProduto`, `idEstoque`),
  CONSTRAINT `fk_ProdutoEstoque_Produto` FOREIGN KEY (`idProduto`) REFERENCES `ecommerce`.`Produto` (`idProduto`),
  CONSTRAINT `fk_ProdutoEstoque_Estoque` FOREIGN KEY (`idEstoque`) REFERENCES `ecommerce`.`Estoque` (`idEstoque`));

-- -----------------------------------------------------
-- Table `ecommerce`.`ProdutoPedido`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`ProdutoPedido` (
  `idPedido` INT NOT NULL,
  `idProduto` INT NOT NULL,
  `quantidade` INT NULL DEFAULT 0,
  PRIMARY KEY (`idPedido`, `idProduto`), 
  CONSTRAINT `fk_PedidoProduto_Pedido` FOREIGN KEY (`idPedido`) REFERENCES `ecommerce`.`Pedido` (`idPedido`),
  CONSTRAINT `fk_PedidoProduto_Produto` FOREIGN KEY (`idProduto`) REFERENCES `ecommerce`.`Produto` (`idProduto`));
  
-- -----------------------------------------------------
-- Table `ecommerce`.`CpfCliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`CpfCliente` (
  `idCpfCliente` INT NOT NULL AUTO_INCREMENT,
  `idCliente` INT NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `CPF` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`idCpfCliente`),
  CONSTRAINT `CPF_UNIQUE` UNIQUE (`CPF`),
  CONSTRAINT `fk_CPF_Cliente` FOREIGN KEY (`idCliente`) REFERENCES `ecommerce`.`Cliente` (`idCliente`));

-- -----------------------------------------------------
-- Table `ecommerce`.`CnpjCliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ecommerce`.`CnpjCliente` (
  `idCnpjCliente` INT NOT NULL AUTO_INCREMENT,
  `idCliente` INT NOT NULL,
  `razaoSocial` VARCHAR(50) NOT NULL,
  `CNPJ` VARCHAR(18) NOT NULL,
  PRIMARY KEY (`idCnpjCliente`),
  CONSTRAINT `CNPJ_UNIQUE` UNIQUE (`CNPJ`),
  CONSTRAINT `fk_CNPJ_Cliente` FOREIGN KEY (`idCliente`) REFERENCES `ecommerce`.`Cliente` (`idCliente`));