Dado(/^que estou no site e logo no sistema$/) do
  fill_in('txtUsername', :with => 'admin')
  fill_in('txtPassword', :with => 'admin')
  click_button('btnLogin')
end

Quando(/^acesso a pagina de cadastro de funcionarios$/) do
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_addEmployee')
end

Entao(/^adiciono as imnformacoes do novo funcionario$/) do
  fill_in('firstName', :with => 'Teste')
  fill_in('middleName', :with => 'Xavier')
  fill_in('lastName', :with => Faker::Internet.user_name)
  click_button('btnSave')
end

Quando(/^acesso a lista de funcionarios cadastrados$/) do
  click_link('menu_pim_viewPimModule')
  click_link('menu_pim_viewEmployeeList')
end

Entao(/^edito os dados do funcionario$/) do
  sleep(2)
  fill_in('empsearch_employee_name_empName', :with => 'Teste')
  click_button('searchBtn')
  click_link('Teste Xavier')
  click_button('btnSave')
  fill_in('personal_txtEmpFirstName', :with => Faker::Name.first_name)
  fill_in('personal_txtEmpMiddleName', :with => Faker::Name.last_name)
  fill_in('personal_txtEmpLastName', :with => Faker::Internet.user_name)
  choose('personal_optGender_1')
  select('Brazilian', :from => 'personal[cmbNation]')
  select('Married', :from => 'personal_cmbMarital')
  click_button('btnSave')
  click_link('Job')
  click_button('Edit')
  select('IT Executive', :from => 'job_job_title')
  select('Full-Time Permanent', :from => 'job_emp_status')
  select('Professionals', :from => 'job_eeo_category')
  select('IT', :from => 'job_sub_unit')
  select('HQ - CA, USA', :from => 'job_location')
  click_button('Save')
  click_link('Salary')
  click_button('addSalary')
  select('Chief Executive Officer (C.E.O)', :from => 'salary_sal_grd_code')
  fill_in('salary_salary_component', :with => Faker::Number.between(1, 10))
  select('Monthly', :from => 'salary_payperiod_code')
  select('United States Dollar', :from => 'salary_currency_id')
  fill_in('salary_basic_salary', :with => Faker::Number.decimal(2, 3))
  fill_in('salary_comments', :with => Faker::ChuckNorris.fact)
  click_button('Save')
end