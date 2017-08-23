require 'cucumber'
require 'watir-webdriver'
require 'page-object'
require 'rspec/expectations'

World(RSpec::Matchers)
World(RSpec::Expectations)
World(PageObject::PageFactory)