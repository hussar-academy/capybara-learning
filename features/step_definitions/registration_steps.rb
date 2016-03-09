Then(/^I should see sign up error message$/) do
  expect(page).to have_content("Please review the problems below")
end

Then(/^I should see welcome message$/) do
  expect(page).to have_content("Welcome! You have signed up successfully.")
end
