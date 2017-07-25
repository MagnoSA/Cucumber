  #language: pt
  
  Funcionalidade: Login
    Sendo um usuario do Invoices
    Posso fazer login
    Para acessar minha conta e meus clientes
    
  @logout
  Cenario: Adm faz login
  
    Dado que eu tenho um usuario adm com os seguintes atributos:
        | Email | kato.danzo@qaninja.com.br | 
        | Senha | secret                    | 
    Quando faço login
    Então vejo o dashboard logado com a mensagem "Bem Vindo Kato Danzo!"

  @inv  
  Esquema do Cenario: Tentativa de login
  
    Dado que eu tenho um <email> e <senha>
    Quando faço login
    Então vejo a mensagem <msg>
    
    Exemplos:
        | email                       | senha      | msg                                | 
        | "kato.danzo@qaninja.com.br" | "jadfasf"  | "Incorrect password"               | 
        | "padrekevedo@naoexiste.com" | "teste123" | "User not found"                   | 
        | "kato.danzo#qaninja.com.br" | "secret"   | "Please enter your e-mail address" | 
    
    