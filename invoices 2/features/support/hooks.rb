Before do
    @login = LoginPage.new
    @logout = LogoutPage.new
    @clientes = ClientesMethods.new
    @clientes_elements = ClientesElements.new
    @faturas_methods = FaturasMethods.new
    @faturas_elements = FaturasElements.new
    @item_methods = ItemMethods.new
    @item_elements = ItemElements.new
end

After ('@logout') do
    @logout.dropdown.click
    @logout.sair.click
        expect(page).to have_css("#login", :visible => true) 
end