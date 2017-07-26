require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'faker'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Faker::Config.locale = 'pt-BR'

Capybara.register_driver :selenium do |app|
                Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
                config.default_driver = :selenium
                config.default_max_wait_time = 5
                config.app_host = 'http://ninjainvoices.herokuapp.com'
                Capybara.page.driver.browser.manage.window.maximize
end
