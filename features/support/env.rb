require 'capybara'
require 'selenium-webdriver'
require 'capybara/dsl'
require 'rspec'
require 'allure-cucumber'

require_relative '../../config/base_config'
require_relative '../../utils/driver'
require_relative '../../utils/page_helper'

include Capybara::DSL
include RSpec::Matchers

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_selector = :css
  config.app_host = 'https://automationexercise.com/'
  config.default_max_wait_time = BaseConfig.wait_time
end

Allure.configure do |c|
  c.results_directory = "output/allure-result"
  c.logging_level = BaseConfig.logging_level
  c.environment_properties = {browser: "#{BaseConfig.browser}",
                              headless: "#{BaseConfig.headless}"}
end