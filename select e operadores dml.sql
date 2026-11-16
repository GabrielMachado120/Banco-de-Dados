select nome, cidade, estado
from clientes
where estado = 'SP'
order by nome;

select * from produtos;
select distinct cidade from clientes;
select * from clientes limit 2;

select preco + 10 from produtos;
select preco - 5 from produtos;
select preco * 1.1 from produtos;
select preco / 2 from produtos;
select 10 % 3;

select * from clientes
where cidade = 'São Paulo';	

select * from produtos
where preco != 132;

select * from produtos
where preco > 300;

select * from produtos
where estoque < 10;

select * from produtos
where preco >= 20000;

select * from produtos
where preco <= 132;

select * from produtos
where nome = 'NOTEBOOK DELL' and preco > 4000;

select * from clientes
where estado = 'SP' or estado = 'RJ';

select * from clientes
where not estado = 'SP';

select * from produtos
where preco between 10 and 100;

select * from clientes
where cidade in ('SP', 'RJ', 'BH');

select * from produtos
where nome like 'N%';

select * from clientes
where telefone is null;