#encoding: utf-8

Dado(/^que eu tenho um usuario adm com os seguintes atributos:$/) do |table|
  @user = table.rows_hash['Email']
  @pwd = table.rows_hash['Senha']
end

Quando(/^faço login$/) do
  visit'http://ninjainvoices.herokuapp.com/login'
  find('input[id=email]').set @user
  find('input[type=password]').set @pwd
  find('.login-button').click
end

Então(/^vejo o dashboard com a mensagem "([^"]*)"$/) do |msg|
  view_title = find('#page_title').text
  expect(view_title).to eql msg
  user_menu = find('#menu a[data-toggle=dropdown]').text
  expect(user_menu).to eql @user
  sleep(5)
end