

class LoginPage < SitePrism::Page
    set_url '/login'
    element :username, 'input[id=email]'
    element :password, 'input[type=password]'
    element :sig_in, '.login-button'
    element :alert, '.alert-warning'

    def with(u, p)
        self.username.set ''
        self.username.set u
        self.password.set ''
        self.password.set p
        self.sig_in.click
    end
end

class DashPage < SitePrism::Page
    element :view_title, '#page_title'
end

class NavPage < SitePrism::Page
    element :customers, 'a[href$=customers]'
    element :user_menu, '#menu a[data-toggle=dropdown]'
    element :logout_link, 'a[href$=logout]'
end

class CustomersPage < SitePrism::Page
    set_url '/customers'
    element :insert_button, '#dataview-insert-button'
    element :name, 'input[name=name]'
    element :phone, 'input[name=phone]'
    element :email, 'input[name=email]'
    element :sexo, 'input[name=radio-m]'
    element :type, 'select[id=type-customer]'
    element :notes, 'textarea[name=note]'
    element :check, 'input[type=checkbox]'
    element :save_button, '#form-submit-button'
    element :search_field, '#dataview-search-input'
    element :search_button, '#dataview-search-button'
    element :view, 'table[id=dataview-table] tbody'

    def save(user)
        self.insert_button.click
        self.name.set user.name
        self.phone.set user.phone
        self.email.set user.email
        self.sexo.click
        self.type.select user.type
        self.notes.set user.notes
        self.check.click
        self.save_button.click
    end

    def search(target)
        self.search_field.set target
        self.search_button.click
    end

end