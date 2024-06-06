create table aluno (
  ID serial PRIMARY KEY,
  matricula INT NOT NULL,
  nome VARCHAR(20) not NULL,
  sobrenome VARCHAR(20) NOT NULL,
  email VARCHAR, 
  endereco VARCHAR,
  telefone VARCHAR(15)
  )
  
  insert into aluno 
  (id, matricula, nome, sobrenome, email, endereco, telefone)
  values 
  ('01', '1234', 'João Carlos', 'da Silva', 'jcarlos@gmail.com', 'Rua 13 de maio', '(11)7825-4489'),
  ('02', '2345', 'José Vitor', 'Teixeira', 'jvitor@gmail.com', 'Rua da saudade', '(11)7825-6589'),
  ('03', '3456', 'Paula André', 'Queiroz', 'pandrr@gmail.com', 'Rua do sol', '(11)7825-4495')
  
  select * from aluno
  