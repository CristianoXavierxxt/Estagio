## Objetivo 

O objetivo desta modelagem dimenssional é facilitar as consultas as dados sobre multiplas perspectivas


## O que foi feito

Eu crie uma tabela fatos_locação que facilita a busca por dados pois se relaciona com todas as tabelas e também crie as dimenssões para carros, clientes e vendedores, onde carros agora mostra o tipo de combustivel já que no modelo relacional ele tinha um relacionamento com a tabela combustiveis que agora faz parte da dim_carros, essa alteração vai facilitar a busca por dados pois exige consultas menos complexas. 