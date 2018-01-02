#language: pt

Funcionalidade: Gerenciamento de Itens
    Sendo um administrador do Invoices
    Posso acessar os itens das faturas
    Para administrar faturas do sistema

Contexto: Acessar sistema
  * acessar sistema
  * faco login
  * vejo o dashboard com sucesso
  * que acesso uma fatura cadastrada

@item @cadastro_item @logout
Cenario: Cadastrar Item
    Quando cadastro um item
    Entao visualizo o item com sucesso

@item @edicao_item @logout
Cenario: Editar Item
    Dado cadastro um item
    Quando edito um item cadastrado
    Entao visualizo o item atualizado com sucesso

@item @exclusao_item @logout
Cenario: Excluir Item
    Dado cadastro um item
    Quando excluo um item cadastrado
    Entao vejo mensagem de nenhum item cadastrado