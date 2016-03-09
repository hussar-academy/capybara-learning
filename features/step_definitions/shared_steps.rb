Given(/^I go to main page$/) do
  visit root_path
end

Given(/^I click in navbar "(.*?)"$/) do |to_co_klikam|
  within('.navbar') { click_link(to_co_klikam) }
end

When(/^I fill "(.*?)" field with "(.*?)"$/) do |field, value|
  fill_in field, with: value
end

When(/^I click button "(.*?)"$/) do |arg1|
  click_button arg1
end
