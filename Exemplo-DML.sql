CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE clientes (   
id_cliente INT AUTO_INCREMENT PRIMARY KEY,   
nome VARCHAR(100) NOT NULL,   
email VARCHAR(100) UNIQUE,   
cidade VARCHAR(50),   
estado CHAR(2),   
telefone VARCHAR(20)
);

CREATE TABLE produtos (   
id_produto INT AUTO_INCREMENT PRIMARY KEY,   
nome VARCHAR(100) NOT NULL,   
preco DECIMAL(10,2) NOT NULL,   
estoque INT DEFAULT 0
);

CREATE TABLE pedidos (   
id_pedido INT AUTO_INCREMENT PRIMARY KEY,   
id_cliente INT,   
data_pedido DATE,   
valor_total DECIMAL(10,2),   
FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE itens_pedido (   
id_item INT AUTO_INCREMENT PRIMARY KEY,   
id_pedido INT,   
id_produto INT,   
quantidade INT,   
subtotal DECIMAL(10,2),   
FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),   
FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

insert into produtos (nome, preco, estoque)
values
('Notebook Dell', 4500.00, 10),
('Mouse Gamer', 120.00, 50),
('Teclado Mecânico', 280.00, 30),
('Monitor 24"', 900.00, 15),
('Cadeira Gamer', 1300.00, 5);

insert into pedidos (id_cliente, data_pedido, valor_total)
values
(1, '2025-10-01', 4620.00),
(3, '2025-10-05', 1500.00);

insert into itens_pedido (id_pedido, id_produto, quantidade, subtotal)
values
(1, 1, 1, 4500.00),
(1, 2, 1, 120.00),
(2, 5, 1, 1300.00),
(2, 3, 1, 200.00);

set sql_safe_updates = 0;

update produtos
set preco = preco *1.10
where nome like '%Gamer%';

delete from clientes
where cidade = 'Rio de Janeiro';