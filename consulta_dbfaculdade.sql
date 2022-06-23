select a.ra, a.nome_aluno, a.sobrenome_aluno, c.nome_curso, t.periodo
from aluno a 
join curso c
      on a.fk_cod_curso = c.cod_curso
join turma t
      on a.fk_cod_turma = t.cod_turma
order by a.nome_aluno;


select a.ra, a.nome_aluno, a.sobrenome_aluno, d.nome_disciplina, dh.nota
from aluno a 
join aluno_disciplina ad 
on ad.fk_ra= a.ra
join disciplina d 
on d.cod_disciplina = ad.fk_cod_disciplina
join historico h 
on a.ra = h.fk_ra 
join disciplina_historico dh
on dh.fk_cod_disciplina = d.cod_disciplina
where a.ra = '2'
order by dh.nota desc;


create view vw_professorDisciplina as
select concat(p.nome_professor,' ', p.sobrenome_professor) as nome,
d.nome_disciplina, d.carga_horaria
from professor p
join professor_disciplina pd
on pd.fk_cod_professor = p.cod_professor
join disciplina d 
on pd.fk_cod_disciplina = d.cod_disciplina;


create view vw_alunoDados AS
select a.ra, a.nome_aluno, a.sobrenome_aluno, a.cpf, a.status, a.sexo, a.nome_pai,
a.nome_mae, a.email, a.whatsapp, tl.tipo_logradouro, e.nome_rua, e.numero_rua,
e.complemento, e.cep, tt.tipo_telefone, t.num_telefone
from aluno a 
join endereco e
     on a.fk_cod_endereco = e.cod_endereco
join tipo_logradouro tl
     on e.fk_cod_tipo_logradouro = tl.cod_tipo_logradouro
join telefone_aluno ta
     on ta.fk_ra = a.ra
join telefone t
     on ta.fk_cod_telefone = t.cod_telefone
join tipo_telefone tt
     on t.fk_cod_tipo = tt.cod_tipo
order by a.nome_aluno;


select d.nome_disciplina, dep.nome_departamento,
       c.nome_curso, p.nome_professor, p.sobrenome_professor
from disciplina d
join departamento dep
     on d.fk_cod_departamento = dep.cod_departamento
join curso_disciplina cd
     on cd.fk_cod_disciplina = d.cod_disciplina
join curso c
     on cd.fk_cod_disciplina = d.cod_disciplina
join professor_disciplina pd
     on pd.fk_cod_disciplina = d.cod_disciplina
join professor p
     on pd.fk_cod_professor = p.cod_professor
order by d.nome_disciplina;

