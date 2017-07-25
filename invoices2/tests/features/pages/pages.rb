

class LoginPage < SitePrism::Page
    set_url '/login'
    element :username, 'input[id=email]'
    element :password, 'input[type=password]'
    element :sig_in, '.login-button'
    element :alert, '.alert-warning'

    def with(u, p)
        self.username.set u
        self.password.set p
        self.sig_in.click
    end
end

class DashPage < SitePrism::Page
    element :view_title, '#page_title'
end

class NavPage < SitePrism::Page
    element :user_menu, '#menu a[data-toggle=dropdown]'
    element :logout_link, 'a[href$=logout]'
end
