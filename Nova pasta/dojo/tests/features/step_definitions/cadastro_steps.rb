Dado(/^acesso a pagina de cadastro$/) do
  visit ('http://demoqa.com/')
end

Quando(/^realizo o cadastro$/) do
  click_link('Registration')
  fill_in('name_3_firstname', :with => Faker::Name.first_name)
  fill_in('name_3_lastname', :with => Faker::Name.last_name)
  find(:xpath, '//*[@id="pie_register"]/li[2]/div/div/input[2]').click
  find(:xpath, '//*[@id="pie_register"]/li[3]/div/div/input[2]').click
  select('Brazil', :from => 'dropdown_7')
  select('8', :from => 'date_8[date][mm]')
  select('9', :from => 'date_8[date][dd]')
  select('1988', :from => 'date_8[date][yy]')
  fill_in('phone_9', :with => Faker::Number.number(10))
  fill_in('username', :with => Faker::Internet.user_name)
  fill_in('email_1', :with => Faker::Internet.free_email)
  fill_in('description', :with => Faker::ChuckNorris.fact)
  senha = Faker::Internet.password
  fill_in('password_2', :with => senha)
  fill_in('confirm_password_password_2', :with => senha)
  click_button('Submit')
end

Então(/^vejo a mensagem de sucesso$/) do
  assert_text('Thank you for your registration')
end