require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'

Capybara.register_driver :selenium do |app|
                Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
                config.default_driver = :selenium
                config.default_max_wait_time = 5
                Capybara.page.driver.browser.manage.window.maximize
end
