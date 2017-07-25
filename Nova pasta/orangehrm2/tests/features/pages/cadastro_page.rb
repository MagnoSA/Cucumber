class LoginPage < SitePrism::Page
    def login(user, password)
        fill_in :user, user
        fill_in :password, password
        click 'login'
    end
    set_url "http://opensource.demo.orangehrmlive.com/"
end