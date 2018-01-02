  Dado("que estou na pagina de clientes") do
    @clientes_elements.load
  end
  
  Quando("faco busca por cliente") do
    @clientes.buscar_cliente(@email)
  end

  Quando("cadastro um novo cliente") do
    @clientes.cadastrar_cliente(
            @nome = "#{Faker::Name.first_name} #{Faker::Name.last_name}",
            @telefone = "21 9#{Faker::Number.number(8)}",
            @email = Faker::Internet.free_email(@nome),
            sexo = 'M',
            tipo_cliente = 'Gold',
            obs = Faker::ChuckNorris.fact)
    step "faco busca por cliente"
  end
  
  Quando("excluo um novo cliente") do
    @clientes.excluir_cliente()
    expect(page).to have_content("Remover")
    expect(page).to have_content("Voce está certo disso?")
    @clientes.excluir_modal()
  end
  
  Quando("edito os dados do cliente") do
    @clientes.editar_cliente(
            @nome = "#{Faker::Name.first_name} #{Faker::Name.last_name}",
            @telefone = "21 9#{Faker::Number.number(8)}",
            @email = Faker::Internet.free_email(@nome),
            obs = Faker::ChuckNorris.fact)
  step "faco busca por cliente"
  end
  
  Entao("visualizo o cliente com os dados atualizados") do
    expect(@clientes_elements.validar_dados.text).to include @nome
    expect(@clientes_elements.validar_dados.text).to include @telefone
    expect(@clientes_elements.validar_dados.text).to include @email
    step "excluo um novo cliente"
  end

  Entao("vejo mensagem de cliente não encontrado") do
    expect(@clientes_elements.validar_cliente_excluido.text).to include(@email)
    expect(@clientes_elements.validar_cliente_excluido.text).to include("não encontrado.")
  end

  Entao("visualizo o cliente com sucesso") do
    expect(@clientes_elements.validar_dados.text).to include @nome
    expect(@clientes_elements.validar_dados.text).to include @telefone
    expect(@clientes_elements.validar_dados.text).to include @email
    step "excluo um novo cliente"
  end