#language: pt

Funcionalidade: Gerenciamento de Clientes
    Sendo um administrador do Invoices
    Posso acessar a pagina de clientes
    Para administrar os dados dos clientes

Contexto: Acessar sistema
  * acessar sistema
  * faco login
  * vejo o dashboard com sucesso
  * que estou na pagina de clientes

@clientes @cadastro_cliente @logout
Cenario: Cadastrar novo cliente
    Quando cadastro um novo cliente
    Entao visualizo o cliente com sucesso
    
@clientes @editar_cliente @logout
Cenario: Editar cliente
    Dado cadastro um novo cliente
    Quando edito os dados do cliente
    Entao visualizo o cliente com os dados atualizados

@clientes @exclusao_cliente @logout
Cenario: Excluir novo cliente
    Dado cadastro um novo cliente
    Quando excluo um novo cliente
    Entao vejo mensagem de cliente não encontrado

