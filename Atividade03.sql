create database Atividade03;

use Atividade03;

create table feed (
	id_feed int auto_increment primary key,
    conteudo varchar(200),
    anuncios boolean
);

create table usuario (
	id_usuario int auto_increment primary key,
    id_feed int,
    foreign key (id_feed) references feed(id_feed),
    nome varchar(100),
    username varchar(50),
    bio varchar(100),
    configuracoes varchar(100)
);

create table publicacao (
	id_publicacao int auto_increment primary key,
    conteudo varchar(100),
    descricao varchar(100),
    data_publicacao datetime
);

create table userPost (
	id_usuario int,
    foreign key (id_usuario) references usuario(id_usuario),
    id_publicacao int,
    foreign key (id_publicacao) references publicacao(id_publicacao)
);

insert into feed (conteudo, anuncios) values
    ('Novidades da comunidade', false),
    ('Publicacoes em destaque', true),
    ('Atualizacoes recentes', false);

insert into usuario (id_feed, nome, username, bio, configuracoes) values
    (1, 'Joao Ferreira', 'joaoferreira', 'Fotografia e viagens', 'Perfil publico'),
    (2, 'Beatriz Oliveira', 'biaoliveira', 'Leitora e cozinheira', 'Perfil privado'),
    (3, 'Lucas Santos', 'lucassantos', 'Musica e tecnologia', 'Perfil publico');

insert into publicacao (conteudo, descricao, data_publicacao) values
    ('Minha viagem ao litoral', 'Fim de semana na praia', '2026-03-10 09:30:00'),
    ('Livro da semana', 'Uma leitura que recomendo', '2026-03-11 14:15:00'),
    ('Projeto novo', 'Comecando um projeto musical', '2026-03-12 18:45:00');

insert into userPost (id_usuario, id_publicacao) values
    (1, 1),
    (2, 2),
    (3, 3);