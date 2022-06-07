Create database if not exists db_faculdade
default character set utf8mb3
default collate utf8_general_ci;

use db_faculdade;

Create table if not exists tipo_telefone(
cod_tipo int(4) auto_increment not null,
tipo_telefone char(8),
primary key (cod_tipo)
);

Create table if not exists telefone(
cod_telefone int(4) auto_increment not null,
num_telefone char(20),
fk_cod_tipo integer(4) not null,
primary key (cod_telefone),
foreign key (fk_cod_tipo) references tipo_telefone (cod_tipo)
);

Create table if not exists telefone_aluno(
cod_tel_aluno int(4) auto_increment not null,
fk_ra int(4) not null,
fk_cod_telefone int(4) not null,
primary key (cod_tel_aluno),
foreign key (fk_ra) references aluno (ra),
foreign key (fk_cod_telefone) references telefone (cod_telefone)
);

Create table if not exists aluno(
ra int(4) auto_increment not null,
nome_aluno char(20) not null,
sobrenome_aluno char (20) not null,
cpf char(11)not null,
status boolean,
sexo char(1) not null,
nome_pai char(30),
nome_mae char(30),
email char(50),
whatsapp char(20),
fk_cod_curso int(4) not null,
cod_turma int(4) not null,
fk_endereco_cod_endereco int(4) not null,
primary key (ra),
foreign key (fk_cod_curso) references curso (cod_curso),
foreign key (cod_turma) references turma (cod_turma),
foreign key (fk_endereco_cod_endereco) references endereco (cod_endereco)
);

Create table if not exists endereco(
cod_endereco int(4) auto_increment not null,
nome_rua char(50) not null,
numero_rua int(4),
complemento char(20) not null,
cep char(8) not null,
fk_cod_tipo_logradouro int(4) not null,
primary key (cod_endereco),
foreign key (fk_cod_tipo_logradouro) references tipo_logradouro(cod_tipo_logradouro)
);

Create table if not exists tipo_logradouro(
cod_tipo_logradouro int(4) auto_increment not null,
tipo_logradouro char(11),
primary key(cod_tipo_logradouro)
);

Create table if not exists historico (
cod_historico int(4) auto_increment not null,
dt_inicio date not null,
dt_fim date not null,
fk_ra int(4) not null,
primary key (cod_historico),
foreign key (fk_ra) references aluno(ra)
);

Create table if not exists disciplina_historico(
fk_cod_historico int(4) not null,
fk_cod_disciplina int(4) not null,
nota float(4,2),
frequencia int(4)not null,
foreign key (fk_cod_historico) references historico (cod_historico)
);

Create table if not exists disciplina(
cod_disciplina int(4) auto_increment not null,
nome_disciplina char(20) not null,
carga_horaria int(4),
descricao char(50),
num_aluno int (4) not null,
fk_cod_departamento int(4) not null,
primary key (cod_disciplina),
foreign key (fk_cod_departamento) references departamento(cod_departamento)
);

Create table if not exists aluno_disciplina(
fk_ra int(4) not null,
fk_cod_disciplina int(4) not null,
foreign key (fk_ra) references aluno(ra),
foreign key (fk_cod_disciplina) references disciplina(cod_disciplina)
);

Create table if not exists curso(
cod_curso int(4) auto_increment not null,
nome_curso char(20) not null,
fk_cod_departamento int(4) not null,
primary key (cod_curso),
foreign key (fk_cod_departamento) references departamento(cod_departamento)
);

Create table if not exists curso_disciplina(
fk_cod_curso int(4) not null,
fk_cod_disciplina int(4) not null,
foreign key (fk_cod_curso) references curso(cod_curso),
foreign key (fk_cod_disciplina) references disciplina(cod_disciplina)
);

Create table if not exists turma(
cod_turma int(4) auto_increment not null,
periodo char(8) not null,
num_alunos int(4) not null,
dt_inicio date,
dt_fim date,
fk_cod_curso int(4) not null,
primary key (cod_turma),
foreign key (fk_cod_curso) references curso(cod_curso)
);

Create table if not exists departamento(
cod_departamento int(4) auto_increment not null,
nome_departamento char(20) not null,
primary key (cod_departamento)
);

Create table if not exists professor(
cod_professor int(4) auto_increment not null,
nome_professor char(20) not null,
sobrenome_professor char(50) not null,
status boolean,
fk_cod_departamento int(4) not null,
primary key(cod_professor),
foreign key(fk_cod_departamento) references departamento(cod_departamento)
);

Create table if not exists professor_disciplina(
fk_cod_professor int(4) not null,
fk_cod_disciplina int(4) not null,
foreign key (fk_cod_professor) references professor(cod_professor),
foreign key (fk_cod_disciplina) references disciplina(cod_disciplina)
);