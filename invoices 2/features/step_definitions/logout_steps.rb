  Quando("faco logout") do
    step "acessar sistema"
    step "faco login"
    @logout.methodo_logout
  end
  
  Entao("vejo a mensagem de bem vindo na pagina principal") do
    home_bem_vindo = @logout.msg_home.text
    expect(home_bem_vindo).to eql 'Introducing Invoices for the rest of us'
  end