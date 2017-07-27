#language: pt

Funcionalidade: Cadastro de clientes
    Sendo um usuario do Invoices
    Posso cadastrar meus clientes
    Para lançar faturas e tudo mais

Cenario: Pagina de clientes
    * usuario acessa pagina de clientes

Esquema do Cenario: Novo cliente

    Dado que eu tenha um cliente do <tipo>
    Quando faço o cadastro desse cliente
    Então vejo esse cliente na lista

    Exemplos:
    | tipo       | 
    | "Prime"    | 
    | "Gold"     | 
    | "Platinum" | 