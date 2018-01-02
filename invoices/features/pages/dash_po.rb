class DashPage < SitePrism::Page
    section :nav, Sections::NavBar, '#navbar'

    element :view_title, '#page_title'
    element :user_menu, '#menu a[data-toggle=dropdown]'
end