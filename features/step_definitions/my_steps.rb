Given(/^I Open baidu Homepage$/) do
  HomePage.open
end

Then(/^I should be able to see search result$/) do
  HomePage.submit_btn.click
end

When(/^I search "([^"]*)"$/) do |keyword|
  HomePage.search_box.set(keyword)
end