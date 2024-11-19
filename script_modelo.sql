-- Criar a tabela Cliente
CREATE TABLE Cliente (
    ID_cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100),
    Tipo_cliente ENUM('PF', 'PJ') NOT NULL,
    CPF_CNPJ VARCHAR(18),
    Email VARCHAR(100),
    Telefone VARCHAR(15),
    Endereco VARCHAR(255)
);

-- Criar a tabela Pagamento
CREATE TABLE Pagamento (
    ID_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    Tipo_pagamento VARCHAR(50),
    Valor DECIMAL(10, 2),
    Data_pagamento DATE,
    ID_cliente INT,
    FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente)
);

-- Criar a tabela Entrega
CREATE TABLE Entrega (
    ID_entrega INT AUTO_INCREMENT PRIMARY KEY,
    Status ENUM('Em andamento', 'Concluída', 'Cancelada'),
    Código_rastreio VARCHAR(50),
    Data_entrega DATE,
    ID_cliente INT,
    FOREIGN KEY (ID_cliente) REFERENCES Cliente(ID_cliente)
);
