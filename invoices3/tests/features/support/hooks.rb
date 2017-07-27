Before do
    @login = LoginPage.new
    @dash = DashPage.new
    @nav = NavPage.new
    @customers = CustomersPage.new
    ##@login.load
end

After('@logout') do 
    @nav.user_menu.click
    @nav.logout_link.click
        expect(page).to have_css("#login", :visible => true) 
    @login.load
end