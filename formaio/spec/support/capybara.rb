Capybara.register_driver :headless_selenium_chrome_in_container do |app|
	Capybara::Selenium::Driver.new app,
	browser: :remote,
	url: "http://selenium_chrome:4444/wd/hub",
	desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
	  chromeOptions: {args: %w(headless disable-gpu)})
end
Capybara.default_driver = :headless_selenium_chrome_in_container
Capybara.server_host = "0.0.0.0"
Capybara.server_port = 3998
Capybara.app_host = 'http://web_formaio:3998'