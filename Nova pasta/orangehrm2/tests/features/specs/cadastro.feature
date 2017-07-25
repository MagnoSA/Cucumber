#language: pt
#utf-8

Funcionalidade: cadastro de empregados
    Como administrador do sistema
    Quero acessar a pagina de cadastro do sistema
    Para cadastrar empregados e editar seus dados

    Contexto: Usuario logado
        Dado que estou no site e logo no sistema

    @cadastrar
    Cenario: Cadastro de empregado
        Quando acesso a pagina de cadastro de funcionarios
        Entao adiciono as imnformacoes do novo funcionario

    @editar
    Cenario: Editar dados do empregado
        Quando acesso a lista de funcionarios cadastrados
        Entao edito os dados do funcionario