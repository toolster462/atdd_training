

When(/^I click the 'All Departments' drop down$/) do
  pending
end

Then(/^Prime Exclusive is an option in the drop down$/) do
  pending
end

Given(/^Prime Exclusive is the selected filter$/) do
  items = dropdown.options
  items.each do|item|
    if item.text == "Prime Exclusive"
      item.click
    end
  end
end

When(/^I search for headphones$/) do
  visit(Homepage)
  on(Homepage).search_field = 'Headphones'
  on(Homepage).search
end

Then(/^the list contains prime exclusive headphones$/) do
  pending
end

