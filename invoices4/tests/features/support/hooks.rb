
# foi refatorado para o page_objects.rb
# Before do
#     @login = LoginPage.new
#     @dash = DashPage.new
#     @customers = CustomersPage.new
# end

After('@logout') do 
    login.nav.do_logout
        expect(page).to have_css("#login", :visible => true) 
    login.load
end