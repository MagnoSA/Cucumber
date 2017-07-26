#encoding: utf-8

Dado(/^usuario acessa pagina de clientes$/) do
  @login.load
  @login.with('kato.danzo@qaninja.com.br', 'secret')
  @nav.customers.click
end

Dado(/^que eu tenha um cliente do "([^"]*)"$/) do |type|
  @user = OpenStruct.new
  @user.name = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
  @user.phone = "21 9#{Faker::Number.number(8)}"
  @user.email = Faker::Internet.free_email(@user.name)
  @user.type = type
  @user.notes = Faker::ChuckNorris.fact
end

Quando(/^faço o cadastro desse cliente$/) do
  @customers.save(@user)
end

Então(/^vejo esse cliente na lista$/) do
  @customers.search(@user.email)
  expect(@customers.view.text).to include @user.name
  expect(@customers.view.text).to include @user.phone
  expect(@customers.view.text).to include @user.email
  sleep(5)
end