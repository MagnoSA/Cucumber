#language: pt

@delete
Funcionalidade: Remover Cliente

Cenario: Pagina de clientes
    * usuario acessa pagina de clientes
    
@new_user
Cenario: Remover um cliente

    Quando removo um cliente
    Então esse cliente não deve ser exibido na lista