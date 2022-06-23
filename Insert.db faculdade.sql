
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

      insert into professor(nome_professor, sobrenome_professor, status, fk_cod_departamento)
values
     ('Rogério', 'Santos', '0', '3'),
     ('Aurélio', 'Sol', '1', '1'),
     ('Maria', 'Rosa', '1', '2'),
     ('Aires', 'Soares', '1', '1'),
     ('Clovis', 'Barros', '0', '5'),
     ('Dinize', 'Machado', '0', '4'),
     ('Gilvan', 'Pinto', '1', '4'),
     ('Pedro', 'Lacerda', '1', '1'),
     ('Luis', 'Felipe', '1', '4'),
     ('Indridy', 'Roberta', '1', '3');
     
     insert into professor_disciplina(fk_cod_professor, fk_cod_disciplina)
values
     ('1', '120'),
     ('2', '99'),
     ('3', '91'),
     ('4', '107'),
     ('5', '97'),
     ('6', '116'),
     ('7', '98'),
     ('8', '101'),
     ('9', '113'),
     ('10', '102');
     
     insert into curso_disciplina(fk_cod_curso, fk_cod_disciplina)
values 
     ('1', '93'),
     ('2', '94'),
     ('3', '120'),
     ('4', '95'),
     ('5', '103'),
     ('6', '108'),
     ('7', '92'),
     ('8', '119'),
     ('9', '98'),
     ('10', '102');
     
     
     insert into tipo_logradouro(tipo_logradouro)
values 
     ('avenida'),
     ('chácara'),
     ('rua'),
     ('avenida');
     
     
     
     insert into endereco(nome_rua, numero_rua, complemento, cep, fk_cod_tipo_logradouro)
values 
	 ('rua um', '1', 'mercadinho', '49090440', '1'),
     ('rua dois', '2', 'lado balada', '47804109', '2'),
     ('rua três', '3', 'portão verde', '76810485', '3'),
     ('rua quatro', '4', 'portão azul', '69058098', '4'),
     ('rua cinco', '5', 'portão preto', '40365040', '2'),
     ('rua seis', '6', 'ao lado padaria', '25935298', '3'),
     ('rua sete', '7', 'em frente mercado', '79073320', '4'),
     ('rua oito', '8', 'portão cinza', '84060872', '1'),
     ('rua nove', '9', 'em frente farmácia', '59154300', '3'),
     ('rua dez', '10', 'apartamento 206', '69036550', '2'),
     ('rua onze', '11', 'apartamento 230', '76873750', '1'),
     ('rua doze', '12', 'apartamento 20', '69911335', '4'),
     ('rua treze', '13', 'ao lado escola', '84016699', '2'),
     ('rua quatorze', '14', 'avenida RJ', '68927197', '4'),
     ('rua quinze', '15', 'avenida SP', '95055047', '4'),
     ('rua dezesseis', '16', 'avenida DF', '93348277', '4'),
     ('rua dezessete', '17', 'Ceilândia', '76908560', '3'),
     ('rua dezoito', '18', 'Samambaia', '64216831', '3'),
     ('rua dezenove', '19', 'Lago Sul', '76873410', '2'),
     ('rua vinte', '20', 'Gama', '55790970', '1');
     
     
     insert into tipo_telefone(tipo_telefone)
values
     ('celular'),
     ('residencial'),
     ('comercial');
     
     
    
     insert into telefone(num_telefone, fk_cod_tipo)
values 
     ('(61)2206-7336','10'),
     ('(61)3878-7570','11'),
     ('(61)2989-4623','12'),
     ('(61)3188-4649','10'),
     ('(61)2450-1664','11'),
     ('(61)2443-5493','12'),
     ('(61)2814-1545','10'),
     ('(61)2632-5612','11'),
     ('(61)2253-7566','12'),
     ('(61)3140-7416','10'),
     ('(61)3140-7416','10'),
     ('(61)3140-7416','10'),
     ('(61)3140-7416','10'),
     ('(61)3140-7416','10'),
     ('(61)2237-3113','10'),
     ('(61)3581-7513','10'),
     ('(61)2446-3158','10'),
     ('(61)3559-6877','10'),
     ('(61)3139-6665','10'),
     ('(61)3568-7188','10'),
     ('(61)2432-7151','10'),
     ('(61)3098-1269','10');
     
     
     
insert into aluno(nome_aluno, sobrenome_aluno, cpf, status, sexo, nome_pai, nome_mae, email, whatsapp, fk_cod_curso, fk_cod_turma, fk_cod_endereco)
 values 
       ('Brunna', 'Macedo', '35553401151', '1', 'F', 'Sasio', 'Zazoas', 'Brunna231@gmail.com', '(61)3357-9810', '1', '2', '1'),
       ('Juvenal', 'Pereira', '16617478410', '1', 'M', 'Rogerinho', 'Berta', 'grayce39@yahoo.com', '(61)2583-0534', '2', '2', '2'),
       ('Arthur', 'Collins', '96293165608', '1', 'M', 'Cleidiomar', 'Rosinha', 'estell_schulist@yahoo.com', '', '1', '2', '3'),
       ('Sarah', 'Cristine', '77644144250', '1', 'F', 'Humberto', 'Dalva', 'palma_leannon65@hotmail.com', '(61)2162-2282', '2', '3', '4'),
       ('Vinicius', 'Lacerda', '34544569591', '1', 'M', 'Daniel', 'Roberta', 'hudson_farrell59@gmail.com', '(61)3755-2972', '2', '3', '5'),
       ('Luciano', 'Lopes', '03212253843', '1', 'M', 'Jubileu', 'Cristina', 'benny83@hotmail.com', '(61)3437-6166', '3', '4', '6'),
       ('Ezequiel', 'Miranda', '86882762856', '1', 'M', 'Elielson', 'Elisangela', 'carey_fay22@yahoo.com', '(61)3230-3816', '4', '4', '6'),
       ('Elinne', 'Chambers', '66237391142', '1', 'F', 'Miguel', 'Isadora', 'dallin68@yahoo.com', '', '5', '5', '7'),
       ('Ezequias', 'Mccarthy', '94885154731', '1', 'M', 'Luís', 'Kiamy ', 'juliana_corkery3@yahoo.com', '(61)3235-4446', '6', '5', '8'),
       ('Antonio', 'Burke', '81843072920', '1', 'M', 'Lucas', 'Abigail', 'adolph49@yahoo.com', '(61)3418-3426', '7', '6', '9'),
       ('Ala', 'Pamela', '91974532500', '1', 'F', 'Abdul', 'Micaela', 'margret_kuphal@yahoo.com', '', '8', '6', '10'),
       ('Ronny', 'Ruiz', '98578873688', '1', 'M', 'Catalin', 'Arianna', 'tiara.turcotte26@gmail.com', '(61)3096-4129', '9', '7', '11'),
       ('Billy', 'Russo', '48982554777', '1', 'M', 'Josué', 'Graciana', 'brisa_wehner98@gmail.com', '(61)3643-6295', '10', '7', '12'),
       ('Andrea', 'Carey', '31752674839', '1', 'F', 'Henrique', 'Luisa', 'ava.cruickshank12@hotmail.com', '(61)2338-2363', '1', '8', '13'),
       ('Harry', 'Potter', '29073382505', '1', 'M', 'Jack', 'Amanda', 'evelyn_murazik@yahoo.com', '', '2', '8', '14'),
       ('Julio', 'Shepard', '90387143351', '1', 'M', 'Andrei', 'Nadine', 'dedrick87@yahoo.com', '(61)2632-3647', '2', '9', '15'),
       ('César', 'Hensley', '19688781142', '1', 'M', 'Kauã ', 'Isabel', 'lorena_stark@hotmail.com', '(61)3411-5574', '3', '9', '16'),
       ('Pedro', 'Guzman', '36665192458', '1', 'M', 'Ivana', 'Nikolai', 'issac_mckenzie@hotmail.com', '(61)2484-5524', '4', '2', '17'),
       ('Wilker', 'Meyer', '76072166504', '1', 'M', 'Arsénio', 'Hayla', 'abraham65@yahoo.com', '(61)2544-8815', '5', '3', '18'),
       ('Alvares', 'Willis', '10123227690', '1', 'M', 'Jeferson', 'Katia', 'hellen42@hotmail.com', '(61)2654-2564', '6', '4', '19');
       
	
       
       insert into telefone_aluno(fk_ra, fk_cod_telefone)
	values 
          ('441', '1'),
          ('441', '2'),
          ('441', '3'),
          ('445', '4'),
          ('445', '5'),
          ('445', '6'),
          ('449', '7'),
          ('449', '8'),
          ('449', '9');
	
    insert into historico (dt_inicio, dt_fim, fk_ra)
values
     ('2002-01-03', '2004-10-23', '441'),
     ('2002-01-15', '2006-09-12', '443'),
     ('2006-02-17', '2010-08-28', '444'),
     ('2006-02-19', '2009-03-15', '446'),
     ('2010-02-02', '2013-04-18', '447'),
     ('2010-05-06', '2012-03-08', '448'),
     ('2013-11-10', '2015-02-13', '449'),
     ('2013-07-23', '2016-09-02', '450'),
     ('2015-05-07', '2017-11-15', '451'),
     ('2015-09-24', '2018-04-27', '452'),
     ('2017-05-31', '2019-08-23', '453'),
     ('2017-03-15', '2020-03-24', '454'),
     ('2018-08-12', '2010-07-22', '456'),
     ('2019-06-13', '2021-08-09', '457'),
     ('2019-10-12', '2022-02-09', '458'),
     ('2020-10-23', '2022-04-07', '459'),
     ('2022-04-18', '2024-02-06', '460');
     
	Insert into disciplina_historico (fk_cod_historico, fk_cod_disciplina, nota, frequencia)
values
    ('1', '91', '10.0', '300'),
    ('2', '92', '10.0', '250'),
    ('3', '93', '10.0', '230'),
    ('4', '94', '10.0', '1000'),
    ('5', '95', '10.0', '1200'),
    ('6', '96', '10.0', '1300'),
    ('7', '97', '10.0', '800'),
    ('8', '98', '10.0', '700'),
    ('9', '99', '10.0', '550'),
    ('10', '100', '10.0', '280'),
    ('11', '101', '10.0', '230'),
    ('12', '102', '10.0', '270'),
    ('13', '103', '10.0', '240'),
    ('14', '104', '10.0', '380'),
    ('15', '105', '10.0', '400'),
    ('16', '106', '10.0', '450'),
    ('17', '107', '10.0', '582');

    update aluno
set fk_cod_curso = null, fk_cod_turma = null
where ra in (442, 445, 456);