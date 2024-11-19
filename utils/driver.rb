class Driver

  def self.get_driver
    case BaseConfig.browser
    when 'chrome'
      options = Selenium::WebDriver::Chrome::Options.new
      Capybara.register_driver :selenium do |app|
        Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
      end
    end
  end

  def self.add_default_values(options)
    options.add_argument('--disable-popup-blocking')
    options.add_argument('--disable-notifications')
    add_headless_options(options) if BaseConfig.headless == 'true'
  end

  def self.add_headless_options(options)
    options.add_argument('--no-sandbox')
    options.add_argument('--headless')
  end

end