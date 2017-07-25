#encoding: utf-8

Dado(/^que eu tenho um usuario adm com os seguintes atributos:$/) do |table|
  @user = table.rows_hash['Email']
  @pwd = table.rows_hash['Senha']
end

Quando(/^faço login$/) do
  login = LoginPage.new

  login.load
  login.with(@user, @pwd)
end

Então(/^vejo o dashboard com a mensagem "([^"]*)"$/) do |msg|
  dash = DashPage.new
  expect(dash.view_title.text).to eql msg

  nav = NavPage.new
  expect(nav.user_menu.text).to eql @user
end
