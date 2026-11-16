create database mecanica;
use mecanica;

create table cliente (
    id_cliente int auto_increment primary key,
    nome varchar(100),
    idade int,
    veiculo varchar(100)
);

insert into cliente (nome, idade, veiculo) value
('Geraldo Esteves', '46', 'HB20'),
('Augusto Esteves', '16', 'Uno'),
('Erivaldo Magalhães', '50', 'Corsa'),
('Celso Dias', '57', 'Honda'),
('Gustavo Cruz', '45', 'Polo');

update cliente
set idade = idade + 1
where nome = 'Augusto Esteves';

delete from cliente
where nome = 'Celso Dias';

select * from cliente
where idade > 18;