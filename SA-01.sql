create database biblioteca;

use biblioteca;

create table leitor (
id_leitor int auto_increment primary key,
nome varchar(50) not null,
cpf varchar(15) not null
-- telefone vai ser criado depois--
);

create table autor (
id_autor int auto_increment primary key,
nome varchar(50) not null,
livro_publicados int not null
-- biografia --
);

create table livro (
id_livro int auto_increment primary key,
id_autor int,
foreign key (id_autor) references autor(id_autor),
nome varchar(50) not null,
genero varchar(30)
-- idioma --
);

create table leitor_livro (
id_leitor int,
foreign key (id_leitor) references leitor(id_leitor),
id_livro int,
foreign key (id_livro) references livro(id_livro),
cadastro int not null,
data_devolução date not null
);

ALTER TABLE leitor ADD telefone VARCHAR(20);
ALTER TABLE livro ADD idioma VARCHAR(40);
ALTER TABLE autor ADD biografia VARCHAR(200);

INSERT INTO leitor (nome, cpf, telefone) VALUES
('Ana Souza', '123.456.789-01', '(11) 98765-4321'),
('Bruno Lima', '234.567.890-12', '(21) 97654-3210'),
('Carla Mendes', '345.678.901-23', '(31) 96543-2109'),
('Diego Costa', '456.789.012-34', '(41) 95432-1098');

INSERT INTO livro (nome, genero, idioma) VALUES
('Dom Casmurro', 'Romance', 'Português'),
('O Pequeno Príncipe', 'Fantasia', 'Português'),
('1984', 'Ficção científica', 'Português'),
('Orgulho e Preconceito', 'Romance', 'Português');

INSERT INTO autor (nome, livro_publicados, biografia) VALUES
('Machado de Assis', 10, 'Escritor brasileiro, autor de Dom Casmurro.'),
('Antoine de Saint-Exupéry', 8, 'Escritor e aviador francês, autor de O Pequeno Príncipe.'),
('George Orwell', 9, 'Escritor britânico, autor de 1984.'),
('Jane Austen', 6, 'Romancista inglesa, autora de Orgulho e Preconceito.');

INSERT INTO leitor_livro (id_leitor, id_livro, cadastro, data_devolução) VALUES
(1, 1, 2026, '2026-11-10'),
(2, 2, 2026, '2026-11-12'),
(3, 3, 2026, '2026-11-15'),
(4, 4, 2026, '2026-11-18');

set sql_safe_updates = 0;

update produtos
set livro_publicados = livro_publicados + 1;

INSERT INTO autor (nome, livro_publicados, biografia) VALUES
('Clarisse Lispector', 3, 'Escritora brasileira, autora de A hora da Estrela.');

delete from autor
where nome = 'Clarisse Lispector';