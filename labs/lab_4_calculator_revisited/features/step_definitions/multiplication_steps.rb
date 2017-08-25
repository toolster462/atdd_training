require 'calculator'


When /^I multiply two numbers$/ do
  @total = Calculator.new.total 10, 5
end

Then /^I get the total$/ do
  expect(@total).to eq 50
end


When /^I multiply a number by zero$/ do
  @total = Calculator.new.total 10, 0
end

Then /^the total is zero$/ do
  expect(@total).to eq 0
end



