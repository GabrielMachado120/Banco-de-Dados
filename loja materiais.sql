create database loja_materiais;
use loja_materiais;

create table produtos (
id int auto_increment primary key,
nome varchar(150) not null,
marca varchar(100) not null,
modelo varchar(100) not null,
categoria varchar(80) not null,
material varchar(100) default'',
tamanho varchar(80) default'',
peso varchar(50) default'',
tensao varchar(50) default'',
caracteristicas text,
estoque int not null default 0,
estoque_minimo int not null default 0,
criado_em timestamp default current_timestamp
);

create table movimentacoes (
id int auto_increment primary key,
produto_id int not null,
tipo enum('entrada','saida') not null,
quantidade int not null,
observacao varchar(255) default'',
data_movimentacao timestamp default current_timestamp,
foreign key (produto_id) references produtos(id) on delete cascade
);