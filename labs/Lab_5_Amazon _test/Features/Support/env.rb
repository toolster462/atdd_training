require 'page-object'
require 'watir'
require 'rspec/expectations'

class Homepage
  include PageObject

  page_url ('https://www.amazon.com/')
  text_field(:search_field,id: 'twotabsearchtextbox')
  button(:search,value:'Go')
  select_list(:dropdown, id:'searchDropdownBox')

end

