class LogoutPage < SitePrism::Page
    element :dropdown, 'a[class=dropdown-toggle]'
    element :sair, 'a[href="/logout"]'
    element :msg_home, 'h1[id=component-title]'

    def methodo_logout()
        self.dropdown.click
        self.sair.click
    end
end