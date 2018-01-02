#language: pt

Funcionalidade: Cadastro de clientes
    Sendo um usuario do Invoices
    Posso cadastrar meus clientes
    Para lançar faturas e tudo mais

Cenario: Pagina de clientes
    * usuario acessa pagina de clientes

Cenario: Novo cliente

    Dado que eu tenha uma lista de 3 clientes
    Quando faço o cadastro desses clientes
    Então vejo esses clientes na lista