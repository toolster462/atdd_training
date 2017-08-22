require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :chrome
end

After do |scenario|
  if scenario.failed?
    @current_page.save_screenshot 'image.png'
  end
end