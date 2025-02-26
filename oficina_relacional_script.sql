CREATE DATABASE IF NOT EXISTS Oficina;
USE Oficina;

CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Fname VARCHAR(15),
    Minit VARCHAR(1),
    Lname VARCHAR(15),
    Endereco VARCHAR(100),
    TelefoneCelular VARCHAR(11),
    CPF CHAR(11),
    CNPJ CHAR(14),
        CONSTRAINT CK_Cliente_CPF_CNPJ CHECK (
		(CPF IS NOT NULL AND CNPJ IS NULL) OR 
		(CPF IS NULL AND CNPJ IS NOT NULL))
);

CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
    Cliente_idCliente INT,
    Placa VARCHAR(7),
    Modelo VARCHAR(45),
    Ano YEAR,
    Fabricante VARCHAR(45),
    Combustivel ENUM('Gasolina', 'Diesel', 'Elétrico', 'Híbrido', 'GNV'),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE OrdemDeServico (
    idOrdemServico INT PRIMARY KEY AUTO_INCREMENT,
    Veiculo_idVeiculo INT,
    Veiculo_Cliente_idCliente INT,
    DataEmissao DATE,
    ValorTotal DECIMAL(10,2),
    Status ENUM('Esperando peças', 'Em Andamento', 'Concluído') default 'Em Andamento',
    DataConclusao DATE,
    FOREIGN KEY (Veiculo_idVeiculo) REFERENCES Veiculo(idVeiculo),
    FOREIGN KEY (Veiculo_Cliente_idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE FormaDePagamento (
    id_FormadePagamento INT PRIMARY KEY AUTO_INCREMENT,
    FormaDePagamento ENUM('Dinheiro', 'Cartão de Débito', 'Cartão de Crédito', 'Pix'),
    Cliente_idCliente INT,
    OrdemServico_idOrdemServico INT,
    OrdemServico_Veiculo_idVeiculo INT,
    OrdemServico_Veiculo_Cliente_idCliente INT,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente),
    FOREIGN KEY (OrdemServico_idOrdemServico) REFERENCES OrdemDeServico(idOrdemServico),
    FOREIGN KEY (OrdemServico_Veiculo_idVeiculo) REFERENCES Veiculo(idVeiculo),
    FOREIGN KEY (OrdemServico_Veiculo_Cliente_idCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Peça (
    idPeça INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45),
    Valor DECIMAL(10,2)
);


CREATE TABLE Serviço (
    idServiço INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(45),
    Custo DECIMAL(10,2)
);


CREATE TABLE OrcamentoMateriais (
    Serviço_idServiço INT,
    Peça_idPeça INT,
    Quantidade INT,
    ValorUnitario DECIMAL(10,2),
    ValorTotal DECIMAL(10,2),
    PRIMARY KEY (Serviço_idServiço, Peça_idPeça),
    FOREIGN KEY (Serviço_idServiço) REFERENCES Serviço(idServiço),
    FOREIGN KEY (Peça_idPeça) REFERENCES Peça(idPeça)
);

CREATE TABLE OrcamentoMaoDeObra (
    Serviço_idServiço INT,
    OrdemServico_idOrdemServico INT,
    QuantidadeHoras INT,
    ValorMaoDeObra DECIMAL(10,2),
    PRIMARY KEY (Serviço_idServiço, OrdemServico_idOrdemServico),
    FOREIGN KEY (Serviço_idServiço) REFERENCES Serviço(idServiço),
    FOREIGN KEY (OrdemServico_idOrdemServico) REFERENCES OrdemDeServico(idOrdemServico)
);

CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY AUTO_INCREMENT,
    Fname VARCHAR(15),
    Minit VARCHAR(1),
    Lname VARCHAR(15)
);

CREATE TABLE Equipe (
    id_Equipe INT PRIMARY KEY AUTO_INCREMENT,
    OrdemServico_idOrdemServico INT,
    Mecanico_idMecanico INT,
    Funcao ENUM('Chefe', 'Assistente', 'Aprendiz'),
    DataInicio DATE,
    DataConclusao DATE,
    FOREIGN KEY (OrdemServico_idOrdemServico) REFERENCES OrdemDeServico(idOrdemServico),
    FOREIGN KEY (Mecanico_idMecanico) REFERENCES Mecanico(idMecanico)
);
