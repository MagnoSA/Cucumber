
# foi refatorado para o page_objects.rb
# Before do
#     @login = LoginPage.new
#     @dash = DashPage.new
#     @customers = CustomersPage.new
# end

Before('@new_user') do
    @u = OpenStruct.new

    dds = ['11', '18', '21', '51']
    types = ['Prime', 'Gold', 'Platinum']
     
    @u.name = "#{Faker::Name.first_name} #{Faker::Name.last_name}"
    @u.phone = "21 9#{Faker::Number.number(8)}"
    @u.email = Faker::Internet.free_email(@u.name)
    @u.type = types.sample
    @u.notes = Faker::ChuckNorris.fact
    
    customers.save(@u)
end

After('@logout') do 
    login.nav.do_logout
        expect(page).to have_css("#login", :visible => true) 
    login.load
end

After do |scenario|
    name = scenario.name.gsub(/\s+/, '_').tr('/', '_')    
    take_screenshot(name.downcase!) if scenario.failed?
end