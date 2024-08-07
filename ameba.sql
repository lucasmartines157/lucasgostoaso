-- 1 - Listar o nome do cliente, email e nome da cidade.
select cliente.nome as "nome do cliente",
       cliente.email as "e-mail",
	   cidade.nome as "nome da cidade"
from cliente
inner join cidade on cliente.idcidade = cidade.id;

-- 2 - Listar o nome do cliente, email, nome da cidade e nome do estado apenas das cidades do estado de SP.
select
    cliente.nome as NomeCliente,
    cliente.email as EmailCliente,
    cidade.nome as NomeCidade,
    estado.nome as NomeEstado
from cliente
inner join cidade
on cliente.idCidade = cidade.id
inner join estado
on cliente.idEstado = estado.id
where estado.nome = 'SP';


-- 3 - Listar o nome do cliente, email, nome da cidade e nome do estado apenas das cidades que tenham a letra "ó" no nome do cliente.
select cliente.nome as "nome cliente",
cliente.email,
cidade.nome as "nome cidade",
estado.nome as "nome estado"

from
          cliente

inner join cidade on cliente.idcidade = cidade.id

inner join estado on cliente.idcidade = estado.id

where cliente.nome like '%ó%';


-- 4 - Listar o nome do produto e nome da marca dos produtos que custem entre 1000 e 3000 reais.
select 
    produto.nome as NomeProduto, 
    marca.nome as NomeMarca
from produto
inner join marca 
on produto.idMarca = marca.id
where produto.preco between 1000 and 3000;

-- 5 - Listar o nome do produto, nome da marca e nome da categoria dos produtos que tenham a letra "e" no nome do produto.
select 
    produto.nome as NomeProduto, 
    marca.nome as NomeMarca, 
    categoria.nome as NomeCategoria
from produto
inner join marca 
on produto.idMarca = marca.id
inner join categoria 
on produto.idCategoria = categoria.id
where produto.nome like '%e%';
