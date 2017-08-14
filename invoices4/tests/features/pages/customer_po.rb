require_relative 'sections'

class CustomersPage < SitePrism::Page
    set_url '/customers'

    section :nav, Sections::NavBar, '#navbar'
    
    element :alert, '.alert-warning'
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

    elements :items, '#dataview-table tbody tr'

    element :modal_success, '.modal-dialog button[data-bb-handler="success"]'

    def save(u)
        insert_button.click
        name.set u.name
        phone.set u.phone
        email.set u.email
        sexo.click
        type.select u.type
        notes.set u.notes
        check.click
        save_button.click
    end

    def search(target)
        search_field.set target
        search_button.click
    end
end