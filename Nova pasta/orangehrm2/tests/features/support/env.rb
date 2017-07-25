require 'cucumber'
require 'rspec'
require 'capybara'
require 'selenium/webdriver'
require 'rake'
require 'capybara/cucumber'
require 'pry'
require 'faker'
 
Capybara.register_driver :selenium do |app|
                Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
 
Capybara.configure do |config|
                config.default_driver = :selenium
                config.default_max_wait_time = 15
                Capybara.page.driver.browser.manage.window.maximize
end
