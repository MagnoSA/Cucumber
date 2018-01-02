require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'faker'
require 'pry'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

ENV_TYPE = ENV['ENV_TYPE']
DATA = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENV_TYPE}.yaml")

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 6
    config.app_host = DATA['url']
    # config.app_host = 'http://ninjainvoices.herokuapp.com'
    Capybara.page.driver.browser.manage.window.maximize
end