#encoding: utf-8

Dado(/^acessar sistema$/) do
  login.load
end

Dado(/^que eu tenho um usuario adm com os seguintes atributos:$/) do |table|
  @user = table.rows_hash['Email']
  @pwd = table.rows_hash['Senha']
end

Dado(/^que sou "([^"]*)" do sistema$/) do |profile|
  @name = DATA['users'][profile]['name']
  @user = DATA['users'][profile]['email']
  @pwd = DATA['users'][profile]['password']
end

Dado(/^que eu tenha um "([^"]*)" e "([^"]*)"$/) do |email, password|
  @user = email
  @pwd = password
end

Quando(/^faço login$/) do
  login.with(@user, @pwd)
end

Então(/^vejo o dashboard logado com a mensagem de bem vindo$/) do
  expect(dash.view_title.text).to eql "Olá, #{@name}, seja bem vindo ao Invoices..."
  expect(dash.user_menu.text).to eql @user
end

Então(/^vejo a mensagem "([^"]*)"$/) do |msg|
  expect(login.alert.text).to eql msg
end