--ATIVIDADE
--Atributos:
--Departamento: código e nome
CREATE TABLE tb_departamento (
     codigo VARCHAR2(20),
     nome VARCHAR2(200),
     CONSTRAINT pk_departamento PRIMARY KEY (codigo)
);
--Relacionamento 1.N, um departamento deve ter 1 ou muitas disciplinas)
ALTER TABLE tb_departamento ADD CONSTRAINT fk_disciplina 
FOREIGN KEY (codigo) 
REFERENCES tb_disciplina (codigo);

--Disciplina: código, nome e descrição
CREATE TABLE tb_disciplina (
    codigo VARCHAR2(20) PRIMARY KEY,
    nome VARCHAR2(200)  PRIMARY KEY,
    descricao VARCHAR2(200),
    prerequisito CHAR,
    CONSTRAINT check_prerequisito CHECK (prerequisito IN ('liberada', 'não-liberada'))
);

--Curso: código e nome
CREATE TABLE tb_curso (
     codigo VARCHAR2(20) PRIMARY KEY,
     nome VARCHAR2(200)
);
----Relacionamento O,N, uma disciplina deve ter muitos cursos e cursos de ve ter muitas disciplinas
ALTER TABLE tb_curso ADD CONSTRAINT fk_disciplina
FOREIGN KEY (codigo) 
REFERENCES tb_disciplina(codigo);

--Relacionamento O,N, curso pode ter 0(nenhum) aluno ou muitos alunos
ALTER TABLE tb_curso ADD CONSTRAINT fk_aluno
FOREIGN KEY (codigo) 
REFERENCES tb_aluno(RA);

--Aluno: ra e nome
CREATE TABLE tb_aluno (
     RA VARCHAR2(20),
     nome VARCHAR2(200),
     CONSTRAINT pk_aluno PRIMARY KEY(RA)
);
