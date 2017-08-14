#language: pt
  
Funcionalidade: Login
  Sendo um usuario do Invoices
  Posso fazer Login
  Para acessar minha conta e meus clientes

@login
Cenario: Acessar sistema
    * acessar sistema

# @logout @login
# Cenario: Adm faz login
    
#     Dado que eu tenho um usuario adm com os seguintes atributos:
#         | Email | kato.danzo@qaninja.com.br | 
#         | Senha | secret                    | 
#     Quando faço login
#     Então vejo o dashboard com a mensagem "Olá, Kato Danzo, seja bem vindo ao Invoices..."

@logout @login
Cenario: Adm faz login
    
    Dado que sou "admin" do sistema
    Quando faço login
    Então vejo o dashboard logado com a mensagem de bem vindo

@inv
Esquema do Cenario: Temtativa de login

    Dado que eu tenha um <email> e <senha>
    Quando faço login
    Então vejo a mensagem <msg>

    Exemplos:
    | email                       | senha    | msg                        | 
    | "kato.danzo@qaninja.com.br" | "sdfkai" | "Senha inválida."          | 
    | "tesfewewte@qaninja.com.br" | "secret" | "Usuário não cadastrado."  | 
    | "tesfewewte1qaninja.com.br" | "secret" | "Informe um email válido." | 
