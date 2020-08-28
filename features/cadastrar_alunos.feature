#language: pt

Funcionalidade: Cadastrar alunos

Como administrador
Para que eu possa registrar o histórico escolar do aluno
Eu quero cadastrar um aluno no banco de dados


Cenário: Cadastro de aluno com sucesso
Dado que estou na página de cadastro de aluno
E preencho com infomações válidas
E clico em salvar
Então deverei ver o aluno na página de listagem de alunos

Cenário: Cadastro de aluno com erro - sem e-mail
Dado que estou na página de cadastro de aluno
E preencho o nome mas não o e-mail
E clico em salvar
Então deverei ver uma mensagem de erro

Cenário: Cadastro de aluno com erro - sem nome
Dado que estou na página de cadastro de aluno
E preencho o e-mail mas não o nome
E clico em salvar
Então deverei ver uma mensagem de erro

Cenário: Cadastro de aluno com erro - e-mail inválido
Dado que estou na página de cadastro de aluno
E preencho o campo de e-mail com um e-mail inválido
E clico em salvar
Então deverei ver uma mensagem de erro