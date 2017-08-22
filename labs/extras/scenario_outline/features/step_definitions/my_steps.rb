And(/^it is the (.*) property of addition$/) do |property|
  #nothing to do here
end

When(/^I add (.*) and (.*)$/) do |num1, num2|
  @result = num1.to_i + num2.to_i
end

Then(/^I get (.*)$/) do |result|
  expect(@result).to eq result.to_i
end