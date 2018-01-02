  Dado("que acesso uma fatura cadastrada") do
    step "que estou na pagina de clientes"
    step "cadastro um novo cliente"
    step "que estou na pagina de faturas"
    step "cadastro uma fatura"
    @item_methods.acessar_fatura
  end
  
  Quando("faco busca pelo item cadastrado") do
    @item_methods.buscar_item(descricao = @descricao)
  end

  Quando("cadastro um item") do
    @item_methods.cadastrar_item(
        @descricao = Faker::ChuckNorris.fact,
        @qtd = Faker::Number.between(1, 10),
        @preco = Faker::Number.between(1, 100))
    step "faco busca pelo item cadastrado"
  end
  
  Quando("edito um item cadastrado") do
    @item_methods.editar_item(
        @descricao = Faker::ChuckNorris.fact,
        @qtd = Faker::Number.between(1, 10),
        @preco = Faker::Number.between(1, 100))
    step "faco busca pelo item cadastrado"
  end

  Quando("excluo um item cadastrado") do
    @item_methods.excluir_item
    expect(@item_elements.validar_modal.text).to include 'Delete? Are you sure?'
    @item_methods.excluir_modal
  end

  Entao("vejo mensagem de nenhum item cadastrado") do
    expect(@item_elements.validar_item_excluido.text).to include 'Nenhum Item'
  end

  Entao("visualizo o item atualizado com sucesso") do
    step "visualizo o item com sucesso"
  end

  Entao("visualizo o item com sucesso") do
    expect(@item_elements.validar_item.text).to include @descricao
    expect(@item_elements.validar_item.text).to include @qtd.to_s
    expect(@item_elements.validar_item.text).to include @preco.to_s
    expect(@item_elements.validar_item.text).to include @preco.to_s
    @item_methods.validar_total_item(qtd = @qtd, preco = @preco)
    step "faco busca pela fatura cadastrada"
    step "excluo uma fatura cadastrada"
    step "que estou na pagina de clientes"
    step "faco busca por cliente"
    step "excluo um novo cliente"
  end