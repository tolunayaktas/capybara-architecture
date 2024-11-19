home_page = HomePage.new

Given(/^Visit URL$/) do
  home_page.visit_website
end

Then(/^Check the title of the page\. It should be: "([^"]*)"$/) do |expected_title|
  actual_title = home_page.get_title
  expect(actual_title).to eq(expected_title)
end