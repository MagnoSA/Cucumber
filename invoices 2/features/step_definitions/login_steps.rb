  #encoding: utf-8

  Dado("acessar sistema") do
    @login.load
  end

  Quando("faco login") do
    @user = DATA['users']['admin']['email']
    @senha = DATA['users']['admin']['senha']
    @login.methodo_login(@user, @senha)
  end
  
  Entao("vejo o dashboard com sucesso") do
    user_menu = @login.email.text
    expect(user_menu).to eql 'kato.danzo@qaninja.com.br'
  end