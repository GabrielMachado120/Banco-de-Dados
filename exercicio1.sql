insert into clientes (nome, email, cidade, estado, telefone) value
('Luis Miguel', 'luiz.miguel@gmail.com', 'Itatiba', 'SP', '(99) 99999-9999'),
('Matheus Nicolato', 'khan.academy@gmail.com', 'Mococa', 'SP', '(19) 99365-0485');

insert into produtos (nome, preco, estoque) value
('Fone de Ouvido', '130.00', 25),
('Caixa de Som', '400.00', 22);

update produtos
set preco = preco * 1.10
where nome like 'Cadeira Gamer';

delete from clientes
where nome = 'Luis Miguel';

select * from clientes
order by nome;

select * from produtos
where preco between 100 and 1000;