CREATE VIEW vw_fatos_locacao AS
SELECT
    l.idLocacao,
    l.idCarro,
    l.idCliente,
    l.idVendedor,
    l.dataEntrega,
    l.horaEntrega,
    l.dataLocacao,
    l.horaLocacao,
FROM tb_locacao l
JOIN tb_carros c ON l.idCarro = c.idCarro
JOIN tb_clientes cl ON l.idCliente = cl.idCliente
JOIN tb_vendedores v ON l.idVendedor = v.idVendedor
JOIN tb_combustiveis comb ON c.idCombustivel = comb.idCombustivel;

CREATE VIEW vw_dim_carros AS
SELECT
    c.idCarro,
    c.marcaCarro,
    c.modeloCarro,
    c.anoCarro,
    comb.tipoCombustivel 
FROM tb_carros c
JOIN tb_combustiveis comb ON c.idCombustivel = comb.idCombustivel;

CREATE VIEW vw_dim_clientes AS
SELECT *
FROM tb_clientes;

CREATE VIEW vw_dim_vendedores AS
SELECT *
FROM tb_vendedores;