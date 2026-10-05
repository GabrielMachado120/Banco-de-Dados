create database Atividade01;

use Atividade01;

create table aluno (
	id_aluno int auto_increment primary key,
    nome varchar(100),
    idade int,
    ra int
);  

create table professor (
	id_professor int auto_increment primary key,
    nome varchar(100),
    materias varchar(100)
);

create table cursos (
	id_cursos int auto_increment primary key,
    serie varchar(2),
    numero_pessoas int,
    id_professor int,
    foreign key (id_professor) references professor(id_professor)
);

create table matricula (
	id_matricula int auto_increment primary key,
    id_aluno int,
	foreign key (id_aluno) references aluno(id_aluno),
    id_cursos int,
    foreign key (id_cursos) references cursos(id_cursos),
    data_matricula date
);

insert into aluno (nome, idade, ra) values
    ('Ana Souza', 16, 1001),
    ('Bruno Lima', 17, 1002),
    ('Carla Mendes', 16, 1003);

insert into professor (nome, materias) values
    ('Marcos Silva', 'Matematica'),
    ('Lucia Costa', 'Portugues'),
    ('Paulo Rocha', 'Historia');

insert into cursos (serie, numero_pessoas, id_professor) values
    ('1A', 30, 1),
    ('2A', 28, 2),
    ('3A', 25, 3);

insert into matricula (id_aluno, id_cursos, data_matricula) values
    (1, 1, '2026-02-02'),
    (2, 2, '2026-02-03'),
    (3, 3, '2026-02-04');