PRAGMA foreign_keys = ON;

CREATE TABLE tb_combustiveis (
    idcombustivel INT PRIMARY KEY,
    tipoCombustivel VARCHAR(50)
);

CREATE TABLE tb_carros (
    idCarro INT PRIMARY KEY,
    marcaCarro VARCHAR(255),
    modeloCarro VARCHAR(255),
    anoCarro INT,
    idCombustivel INT,
    kmCarro INT,
    FOREIGN KEY (idCombustivel) REFERENCES tb_combustiveis(idCombustivel)
);

CREATE TABLE tb_clientes (
    idCliente INT PRIMARY KEY,
    nomeCliente VARCHAR(255),
    paisCliente VARCHAR(255),
    estadoCliente VARCHAR(255),
    cidadeCliente VARCHAR(255)
);


CREATE TABLE tb_vendedores (
    idVendedor INT PRIMARY KEY,
    nomeVendedor VARCHAR(255),
    sexoVendedor CHAR(1),
    estadoVendedor VARCHAR(255)
);

CREATE TABLE tb_locacao_new (
    idLocacao INTEGER PRIMARY KEY,
    idCarro INTEGER,
    idCliente INTEGER,
    idVendedor INTEGER,
    dataEntrega DATE,
    horaEntrega TIME,
    dataLocacao DATE,
    horaLocacao TIME,
    qtdDiaria INT,
    vlrDiaria DECIMAL(10, 2),
    FOREIGN KEY (idCarro) REFERENCES tb_carros(idCarro),
    FOREIGN KEY (idCliente) REFERENCES tb_clientes(idCliente),
    FOREIGN KEY (idVendedor) REFERENCES tb_vendedores(idVendedor)
);

DROP TABLE tb_locacao;

ALTER TABLE tb_locacao_new RENAME TO tb_locacao;
