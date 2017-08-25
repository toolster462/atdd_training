require 'cucumber'
require 'page-object'
require 'rspec/expectations'
require 'watir'

class Homepage
  include Pageobject

  page_url (https://www.budget.com/en/home)
text_field(:search_field, id:'from')




end

World(RSpec::Matchers)
World(RSpec::Expectations)
World(PageObject::PageFactory)

