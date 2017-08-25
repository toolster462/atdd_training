require 'calculator'

When /^I subtract two numbers$/ do
  @bal = Calculator.new.sub 10, 5
end

Then /^I get the balance$/ do
  expect(@bal).to eq 5
end

When /^I subtract zero from a number$/ do
  @bal = Calculator.new.sub 10, 0
end

Then /^the balance is that number$/ do
  expect(@bal).to eq 10
end

When /^I subtract the same numbers in different orders$/ do
  calc = Calculator.new
  @bal1 = calc.sub 10, 5
  @bal2 = calc.sub 5, 10
end

Then /^the balance will not be the same$/ do
  expect(@bal1).to_not eq @bal2
end

