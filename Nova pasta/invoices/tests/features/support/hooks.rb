
Before do
    @login = LoginPage.new
    @dash = DashPage.new
    @nav = NavPage.new
    @customers = CustomersPage.new
end

After('@logout') do
    ##logout
    @nav.user_menu.click
    @nav.logout_link.click
end