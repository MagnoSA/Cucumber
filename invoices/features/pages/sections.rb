

module Sections
    class NavBar < SitePrism::Section
        element :customers, 'a[href$=customers]'
        element :user_menu, '#menu a[data-toggle=dropdown]'
        element :logout_link, 'a[href$=logout]'

        def do_logout
            user_menu.click
            logout_link.click
        end
    end
end