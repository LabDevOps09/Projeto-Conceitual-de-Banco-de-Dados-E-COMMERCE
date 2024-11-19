-- Tabela Cliente
CREATE TABLE Cliente (
    ID_cliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Telefone VARCHAR(15),
    Endereco TEXT
);

-- Tabela Veículo
CREATE TABLE Veiculo (
    ID_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    Placa VARCHAR(10),
    Modelo VARCHAR(50),
    Marca VARCHAR(50),
    Ano INT,
    ID_cliente INT,
    FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente)
);

-- Tabela Ordem de Serviço (OS)
CREATE TABLE OrdemServico (
    ID_OS INT PRIMARY KEY AUTO_INCREMENT,
    Numero_OS VARCHAR(20),
    Data_emissao DATE,
    Valor_total DECIMAL(10, 2),
    Status VARCHAR(20),
    Data_conclusao DATE,
    ID_veiculo INT,
    FOREIGN KEY (ID_veiculo) REFERENCES Veiculo(ID_veiculo)
);

-- Tabela Serviço
CREATE TABLE Servico (
    ID_servico INT PRIMARY KEY AUTO_INCREMENT,
    Nome_servico VARCHAR(100),
    Valor_mao_obra DECIMAL(10, 2)
);

-- Tabela Peça
CREATE TABLE Peca (
    ID_peca INT PRIMARY KEY AUTO_INCREMENT,
    Nome_peca VARCHAR(100),
    Valor_peca DECIMAL(10, 2)
);

-- Tabela Mecânico
CREATE TABLE Mecanico (
    ID_mecanico INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100),
    Endereco TEXT,
    Especialidade VARCHAR(100),
    ID_equipe INT,
    FOREIGN KEY (ID_equipe) REFERENCES Equipe(ID_equipe)
);

-- Tabela Equipe
CREATE TABLE Equipe (
    ID_equipe INT PRIMARY KEY AUTO_INCREMENT,
    Nome_equipe VARCHAR(100)
);

-- Tabela Associativa OS_Servico
CREATE TABLE OS_Servico (
    ID_OS INT,
    ID_servico INT,
    Quantidade INT,
    PRIMARY KEY (ID_OS, ID_servico),
    FOREIGN KEY (ID_OS) REFERENCES OrdemServico(ID_OS),
    FOREIGN KEY (ID_servico) REFERENCES Servico(ID_servico)
);

-- Tabela Associativa OS_Peca
CREATE TABLE OS_Peca (
    ID_OS INT,
    ID_peca INT,
    Quantidade INT,
    PRIMARY KEY (ID_OS, ID_peca),
    FOREIGN KEY (ID_OS) REFERENCES OrdemServico(ID_OS),
    FOREIGN KEY (ID_peca) REFERENCES Peca(ID_peca)
);
