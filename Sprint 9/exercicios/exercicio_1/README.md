## Identificar a Chave Primária:

Primeiro eu indentifiquei quais eram as possiveis chaves primarias de cada nova tabela que eu iria criar. 

    exemplo: idCarro - criar tabela carro

fazendo isso econtrei a necessidade de criar as seguintes tabelas: 

    tb_carro
    tb_clientes
    tb_combustivel
    tb_vendedores

## Primeira forma normal:

Aqui garanti que em cada campo da tabela tb_locacao  não existisse colunas multivaloradas não encontrei nenhum campo assim.

## Segunda forma normal:

Na segunda forma normal eu criei as tabelas tb_carro, tb_clientes, tb_combustivel, tb_vendedores com seus respsctivos atrivutos e verifiquei se existia alguma chave concatenada porém não encontrei nenhuma na divisão de tabelas e atributos que eu fiz.

## Terceira forma normal:

Aqui eu fiz os relacionamentos das tabelas atraves das FK keys




![Evidencia exercio de TMDB](./evidencia_modelagem.png)