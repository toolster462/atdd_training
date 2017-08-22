

When(/^I have this list$/) do |table|
  # the first row is assumed to be the header
  puts table.rows
  @result = 0
  table.rows.each do |row|
    puts row
    @result += row[0].to_i
  end
end

Then(/^the result is (\d+)$/) do |expected|
  expect(@result).to eq expected.to_i
end

When(/^I have the following input$/) do |table|
  # treats the first column as the header and the second column as the value
  input = table.rows_hash
  puts input
  @result = input[:num1].to_i + input[:num2].to_i
end

When(/^I have the following rows$/) do |table|
  #treats the table like a spreadsheet
  @results = table.hashes.collect do |row|
    puts row
    row[:num1].to_i + row[:num2].to_i
  end
end

Then(/^I get the same result for all$/) do
  expect(@results.size).to be > 1
  expect(@results.uniq.size).to eq 1
end