#language: pt

Funcionalidade: Gerenciamento de Faturas
    Sendo um administrador do Invoices
    Posso acessar a pagina de faturas
    Para administrar faturas do sistema

Contexto: Acessar sistema
  * acessar sistema
  * faco login
  * vejo o dashboard com sucesso

@faturas @cadastro_fatura @logout
Cenario: Cadastrar fatura
    Dado que tenho um cliente cadastrado
    E que estou na pagina de faturas
    Quando cadastro uma fatura
    Entao visualizo a fatura com sucesso

@faturas @edicao_fatura @logout
Cenario: Editar fatura
    Dado que tenho um cliente cadastrado
    E que estou na pagina de faturas
    Quando edito uma fatura cadastrada
    Entao visualizo a fatura alterada com sucesso

@faturas @exclusao_fatura @logout
Cenario: Excluir fatura
    Dado que tenho um cliente cadastrado
    E que estou na pagina de faturas com uma fatura cadastrada
    Quando excluo uma fatura cadastrada
    Entao vejo mensagem de fatura não encontrada