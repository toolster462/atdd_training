include PageObject::PageFactory

When(/^I do a good job filling out the survey$/) do
  visit_page Survey

  on_page(Survey) do |page|
    page.submit_demo_survey
  end
  sleep 2
end

Then(/^I expect to be thanked$/) do
  on_page SurveyResult do |page|
    expect(page.response).not_to include 'Thank you'
  end
end