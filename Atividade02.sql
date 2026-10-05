create database Atividade02;

use Atividade02;

create table departamento (
	id_departamentos int auto_increment primary key,
    nome varchar(100)
);

create table funcionario (
	id_funcionario int auto_increment primary key,
    nome varchar(100),
    id_departamentos int,
    foreign key (id_departamentos) references departamento(id_departamentos)
);

create table projetos (
	id_projeto int auto_increment primary key,
    nome varchar(100),
    descricao varchar(100)
);

create table funcionarios_projetos (
	id_funcionario int,
	foreign key (id_funcionario) references funcionario(id_funcionario),
    id_projeto int,
    foreign key (id_projeto) references projetos(id_projeto)
);

insert into departamento (nome) values
    ('Tecnologia'),
    ('Recursos Humanos'),
    ('Financeiro');

insert into funcionario (nome, id_departamentos) values
    ('Rafael Alves', 1),
    ('Mariana Dias', 2),
    ('Felipe Nunes', 3);

insert into projetos (nome, descricao) values
    ('Portal interno', 'Criacao do portal corporativo'),
    ('Recrutamento', 'Automacao do processo seletivo'),
    ('Relatorios', 'Painel de indicadores financeiros');

insert into funcionarios_projetos (id_funcionario, id_projeto) values
    (1, 1),
    (2, 2),
    (3, 3);