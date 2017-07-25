After('@logout') do
    #logout
    @nav = NavPage.new 
    @nav.user_menu.click
    @nav.logout_link.click
        expect(page).to have_css("#login", :visible => true) 
end