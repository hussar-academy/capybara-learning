Given(/^There exists following users$/) do |table|
  table.hashes.each do |row|
    User.create(email: row["Name"], password: row["Password"], password_confirmation: row["Password"])
  end
  # HACK if we need reference
  # row   = table.hashes.first
  # @user = User.create(email: row["Name"], password: row["Password"], password_confirmation: row["Password"])
end

Then(/^I should see navigation links for guest user$/) do
  within('.navbar') do
    expect(page).to have_link('Sign in')
    expect(page).to have_link('Sign up')
    expect(page).to_not have_link('Profile')
    expect(page).to_not have_link('Sign out')
  end
end

Then(/^I should see sign in error message$/) do
  expect(page).to have_content('Invalid email or password.')
end

Then(/^I should see navigation links for signed in user$/) do
  within('.navbar') do
    expect(page).to_not have_link('Sign in')
    expect(page).to_not have_link('Sign up')
    expect(page).to have_link('Profile')
    expect(page).to have_link('Sign out')
  end
end

Then(/^I should see sign in message$/) do
  expect(page).to have_content('Signed in successfully.')
end
