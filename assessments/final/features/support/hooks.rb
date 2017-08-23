Before do
  @browser = Watir::Browser.new(:chrome)
  @browser.goto('https://www.budget.com')
end

Before do
  @browser.close
end