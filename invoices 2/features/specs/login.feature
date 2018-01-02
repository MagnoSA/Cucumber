#language: pt

Funcionalidade: Login
  Sendo um usuario do Invoices
  Posso fazer login
  Para acessar minha conta e meus clientes

Contexto: Acessar sistema
  * acessar sistema

@login @logout
Cenario: Fazer login
  Quando faco login
  Entao vejo o dashboard com sucesso

@log_out
Cenario: Fazer logout
  Quando faco logout
  Entao vejo a mensagem de bem vindo na pagina principal