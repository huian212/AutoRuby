Feature:  As web user, I should be able to search the keyword in Baidu homepage, so that I can find the the web page that I want to see

Scenario: Should show search result when there are matched result
Given I Open baidu Homepage
  When I search "Game"
  Then I should be able to see search result