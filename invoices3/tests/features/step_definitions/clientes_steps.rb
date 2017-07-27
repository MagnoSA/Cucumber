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

### Lista ###

Dado(/^que eu tenha uma lista de (\d+) clientes$/) do |total|
  @arr = (0..total.to_i)
  @users = Array.new

  @types = ['Prime', 'Gold', 'Platinum']

  @arr.each do |item|
      u = OpenStruct.new
      u.name = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
      u.phone = "21 9#{Faker::Number.number(8)}"
      u.email = Faker::Internet.free_email(u.name)
      u.type = @types.sample
      u.notes = Faker::ChuckNorris.fact
      @users.push(u)
  end
end

Quando(/^faço o cadastro desses clientes$/) do
  @users.each do |u|
    @customers.save(u)
  end
end

Então(/^vejo esses clientes na lista$/) do
  @users.each do |u|
    @customers.search(u.email)
    expect(@customers.view.text).to include u.name
    expect(@customers.view.text).to include u.phone
    expect(@customers.view.text).to include u.email
  end
end