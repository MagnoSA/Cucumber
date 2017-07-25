#encoding: utf-8

# Given
Dado(/^Adm faz login$/) do
  @login.load
  @login.with('kato.danzo@qaninja.com.br', 'secret')

 # steps %Q{
 #     Dado que eu tenho um usuario adm com os seguintes atributos:
 #       | Email | kato.danzo@qaninja.com.br | 
 #      | Senha | secret                    |
 #     Quando faço login
 #    Então vejo o dashboard logado com a mensagem "Bem Vindo Kato Danzo!"
 # }

end

Dado(/^que eu tenho um cliente do tipo "([^"]*)"$/) do |type|
  @nome = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
  @phone = Faker::PhoneNumber.cell_phone
  @email = Faker::Internet.free_email(@nome)
  @type = type
  @notes = Faker::ChuckNorris.fact
end


# When
Quando(/^faço o cadastro esse cliente$/) do
  @nav.customers.click
  @customers.insert_button.click
  @customers.nome.set @nome
  @customers.phone.set @phone
  @customers.email.set @email
  @customers.notes.set @notes
  @customers.save_button.click
  sleep(3)
end


# Then
Então(/^vejo esse cliente na lista$/) do
  pending # Write code here that turns the phrase above into concrete actions
end