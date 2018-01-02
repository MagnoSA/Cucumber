class LoginPage < SitePrism::Page
    set_url '/login'
    element :username, 'input[id=email]'
    element :password, 'input[type=password]'
    element :sig_in, '.login-button'
    element :alert, '.alert-warning'
    element :email, '#menu a[data-toggle=dropdown]'

    def methodo_login(user, senha)
        self.username.set user
        self.password.set senha
        self.sig_in.click
    end
end