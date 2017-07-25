#encoding: utf-8

# Given

Dado(/^que eu tenho um usuario adm com os seguintes atributos:$/) do |table|  
  @user = table.rows_hash['Email']
  @pwd = table.rows_hash['Senha']
end                       

Dado(/^que eu tenho um "([^"]*)" e "([^"]*)"$/) do |email, password|
  @user = email
  @pwd = password
end                                                    

# When                                                                            
Quando(/^faço login$/) do          
  @login.load
  @login.with(@user, @pwd)
end                                                                           

# Them                                                                              
Então(/^vejo o dashboard logado com a mensagem "([^"]*)"$/) do |msg|                
  expect(@dash.view_title.text).to eql msg
  expect(@nav.user_menu.text).to eql @user
  sleep(3)
end                                                                           

Então(/^vejo a mensagem "([^"]*)"$/) do |msg|
  expect(@login.alert.text).to include msg
end