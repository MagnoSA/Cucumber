require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'phantomjs'
require 'rspec'
require 'site_prism'
require 'faker'
require_relative 'page_objects'
require_relative 'helpers'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

World(Pages)
World(Helpers)

ENV_TYPE = ENV['ENV_TYPE']
BROWSER = ENV['BROWSER']

DATA = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENV_TYPE}.yaml")

Faker::Config.locale = 'pt-BR'

Capybara.register_driver :selenium do |app|
    if BROWSER.eql?('chrome')
        Capybara::Selenium::Driver.new(app, :browser => :chrome)
    elsif BROWSER.eql?('firefox')
        Capybara::Selenium::Driver.new(app, :browser => :firefox)
    elsif BROWSER.eql?('edge')
        Capybara::Selenium::Driver.new(app, :browser => :edge)
    elsif BROWSER.eql?('headless')
        # options = { :js_errors => false}
        # Capybara::Poltergeist::Driver.new(app, options)
        Capybara::Selenium::Driver.new(app, :browser => :phantomjs)
    end
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.app_host = DATA['url']
end

Capybara.default_max_wait_time = 5
Capybara.page.driver.browser.manage.window.maximize