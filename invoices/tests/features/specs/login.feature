#language: pt
  
Funcionalidade: Login
  Sendo um usuario do Invoices
  Posso fazer Login
  Para acessar minha conta e meus clientes
  
  Cenario: Adm faz login
    
    Dado que eu tenho um usuario adm com os seguintes atributos:
        | Email | kato.danzo@qaninja.com.br | 
        | Senha | secret                    | 
    Quando faço login
    Então vejo o dashboard com a mensagem "Olá, Kato Danzo, seja bem vindo ao Invoices..."