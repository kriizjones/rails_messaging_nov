Given(/^I am on the "([^"]*)" page$/) do |page|
  if page == "sign up"
    visit new_user_registration_path

  end
end

Given(/^I click "([^"]*)"$/) do |button|
  click_link_or_button button
end

