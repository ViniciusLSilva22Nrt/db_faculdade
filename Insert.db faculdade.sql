
 insert into departamento (nome_departamento)
   values
  ('Ciências humanas'),
  ('Matemática'),
  ('Biologia'),
  ('Estagio'),
  ('Tecno da informação');

   insert into curso (nome_curso, fk_cod_departamento)
   values 
   ('Enge de software', '9'),
   ('Analise de sistemas', '9'),
   ('Biologia', '7'),
   ('Historia', '1'),
   ('Matemática', '6'),
   ('Engenharia elétrica', '8'),
   ('Psicologia', '1'),
   ('Bio tecnologia', '7'),
   ('Filosofia', '1'),
   ('Física', '6');

   insert into disciplina (nome_disciplina, carga_horaria, descricao, num_aluno, fk_cod_departamento)
   values
   ('Raciocinio lógico', '40', 'estudar raciocinio', '28', '6'),
   ('Psicologia cognitiva', '240', 'estudar psicologia', '40', '1'),
   ('Eletronica digital', '120', 'estudar eletronica', '8', '9'),
   ('Programação em c', '30', 'estudar programacao', '12', '9'),
   ('Linguistica', '38', 'estudar linguistica', '41', '1'),
   ('Artes plásticas', '39', 'estudar artes plasticas', '42', '1'),
   ('direito', '800', 'estudar direito', '43', '1'),
   ('relaçoes publicas', '400', 'estudar relacoes publicas', '44', '1'),
   ('ciencias sociais', '450', 'estudar ciencias sociais', '45', '1'),
   ('ciencia politica', '1000', 'estudar ciencia politica', '46', '1'),
   ('comunicação', '850', 'estudar comunicação', '47', '1'),
   ('antropologia ', '1200', 'estudar antropologia', '48', '1'),
   ('quimica', '770', 'estudar quimica', '49', '6'),
   ('arquitetura', '690', 'estudar arquitetura', '50', '6'),
   ('geologia', '699', 'estudar geologia', '51', '6'),
   ('meteorologia', '999', 'estudar meteorologia', '52', '6'),
   ('oceanografia', '1002', 'estudar oceanografia', '53', '6'),
   ('engenharia de petroleo', '872', 'estudar engenharia', '54', '6'),
   ('Adm banco de dados', '600', 'estudar adm dados', '55', '9'),
   ('Adm de redes', '601', 'estudar adm de redes', '56', '9'),
   ('processamento de dados', '403', 'estudar processamento', '20', '9'),
   ('segurança da informação', '601', 'estudar segurança', '21', '9'),
   ('sistemas', '609', 'estudar sistemas', '22', '9'),
   ('suporte tecnino', '230', 'estudar suporte', '23', '9'),
   ('qualidade de sofware', '240', 'estudar software', '24', '9'),
   ('comercio exterior', '200', 'estudar comercio', '25', '8'),
   ('logistica', '299', 'estudar logistica', '26', '8'),
   ('marketing', '780', 'estudar marketing', '27', '8'),
   ('bioinformatica', '1200', 'estudar bioinformatica', '28', '7'),
   ('genetica','720','estudar genetica', '29', '7');
   
   
   Insert into turma (periodo, num_alunos, dt_inicio, dt_fim, fk_cod_curso)
   values
   ('1 mes', '26', '2020-03-15', '2022-05-07', '1'),
   ('2 mes', '28', '2022-04-18', '2024-06-29', '2'),
   ('3 mes', '29', '2018-07-06', '2020-08-28', '3'),
   ('4 mes', '30', '2016-05-09', '2019-12-05', '4'),
   ('5 mes', '31', '2014-09-12', '2017-05-08', '5'),
   ('6 mes', '32', '1998-05-09', '2003-07-05', '6'),
   ('7 mes', '33', '2000-11-07', '2006-08-13', '7'),
   ('8 mes', '34', '1977-02-05', '1980-02-18', '8')
   ; 