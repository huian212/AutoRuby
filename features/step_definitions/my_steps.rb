Given(/^I am in Bing Homepage$/) do
  HomePage.open
end


Then(/^I should be able to see "([^"]*)" in the top textbox in search result page$/) do |keyword|
  expect(SearchResultPage.top_searchboxs.value).to eq(keyword)
end

When(/^I outline search (.*)$/) do |keyword|
  HomePage.search_box.set(keyword)
  HomePage.submit_btn.click
end

Then(/^I outline should be able to see (.*) in the top textbox in search result page$/) do |keyword|
  expect(SearchResultPage.top_searchboxs.value).to eq(keyword)
end

When(/^I search "([^"]*)"$/) do |keyword|
  HomePage.search_box.set(keyword)
  HomePage.submit_btn.click
end

Given(/^a blog post named "([^"]*)" with Markdown body$/) do |arg, text|
  pending
end