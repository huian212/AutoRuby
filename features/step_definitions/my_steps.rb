Given(/^I Open Bing Homepage$/) do
  HomePage.open
end

When(/^I search "([^"]*)"$/) do |keyword|
  HomePage.search_box.set(keyword)
  HomePage.submit_btn.click
end

Then(/^I should be able to see "([^"]*)" in the top textbox in search result page$/) do |keyword|
  expect(SearchResultPage.top_searchboxs.value).to eq(keyword)
end