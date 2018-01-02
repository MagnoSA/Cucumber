  Dado("que tenho um cliente cadastrado") do
    step "que estou na pagina de clientes"
    step "cadastro um novo cliente"
  end

  Dado("que estou na pagina de faturas") do
    @faturas_elements.load
  end
  
  Dado("que estou na pagina de faturas com uma fatura cadastrada") do
    step "que estou na pagina de faturas"
    step "cadastro uma fatura"
  end

  Quando("faco busca pela fatura cadastrada") do
    @faturas_elements.load
    @faturas_methods.buscar_fatura(nome = @nome)
  end

  Quando("cadastro uma fatura") do
    @faturas_methods.cadastrar_fatura(nome = @nome)
    @faturas_elements.load
    @faturas_methods.buscar_fatura(nome = @nome)
  end
  
  Quando("edito uma fatura cadastrada") do
    step "cadastro uma fatura"
    @faturas_methods.alterar_fatura
    @faturas_methods.buscar_fatura(nome = @nome)
  end
  
  Quando("excluo uma fatura cadastrada") do
    @faturas_methods.excluir_fatura()
    expect(page).to have_content("Remover")
    expect(page).to have_content("Voce está certo disso?")
    @faturas_methods.excluir_modal()
  end

  Entao("vejo mensagem de fatura não encontrada") do
    expect(@faturas_elements.fatura_excluida.text).to include(@nome)
    expect(@faturas_elements.fatura_excluida.text).to include("não encontrada.")
  end

  Entao("visualizo a fatura alterada com sucesso") do
    @faturas_methods.validar_nova_data_fatura
    expect(@faturas_elements.validar_fatura.text).to include @nome
    step "excluo uma fatura cadastrada"
    step "que estou na pagina de clientes"
    step "faco busca por cliente"
    step "excluo um novo cliente"
  end

  Entao("visualizo a fatura com sucesso") do
    @faturas_methods.validar_data_fatura
    expect(@faturas_elements.validar_fatura.text).to include @nome
    step "excluo uma fatura cadastrada"
    step "que estou na pagina de clientes"
    step "faco busca por cliente"
    step "excluo um novo cliente"
  end