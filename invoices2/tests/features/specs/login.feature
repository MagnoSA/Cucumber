#language: pt
  
Funcionalidade: Login
  Sendo um usuario do Invoices
  Posso fazer Login
  Para acessar minha conta e meus clientes

Cenario: Acessar sistema
    * acessar sistema

@logout
Cenario: Adm faz login
    
    Dado que eu tenho um usuario adm com os seguintes atributos:
        | Email | kato.danzo@qaninja.com.br | 
        | Senha | secret                    | 
    Quando faço login
    Então vejo o dashboard com a mensagem "Olá, Kato Danzo, seja bem vindo ao Invoices..."

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
