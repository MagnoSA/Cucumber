require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'rspec'
require 'site_prism'
require 'faker'
require_relative 'page_objects'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

World(Pages)

ENV_TYPE = ENV['ENV_TYPE']

DATA = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENV_TYPE}.yaml")

Faker::Config.locale = 'pt-BR'

Capybara.register_driver :selenium do |app|
                Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
                config.default_driver = :selenium
                config.default_max_wait_time = 5
                config.app_host = DATA['url']
                Capybara.page.driver.browser.manage.window.maximize
end
