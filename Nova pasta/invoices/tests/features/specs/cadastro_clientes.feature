#language: pt

Funcionalidade: Cadastro de clientes
    Sendo um usuario do Invoices
    Posso cadastrar meus clientes
    Para lançar faturas e tudo mais

Contexto: Usuário logado
    * Adm faz login

Cenario: Novo cliente

    Dado que eu tenho um cliente do tipo "Gold" 
    Quando faço o cadastro esse cliente
    Então vejo esse cliente na lista