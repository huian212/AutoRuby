Feature:  As web user, I should be able to search the keyword in Baidu homepage, so that I can find the the web page that I want to see

  @smoke
  Scenario: Should show search result when there are matched result
    Given I am in Bing Homepage
    When I search "Game"
    Then I should be able to see "Game" in the top textbox in search result page

  Scenario Outline: Should show search result when there are matched result
    Given I am in Bing Homepage
    When I outline search <keyword>
    Then I outline should be able to see <result> in the top textbox in search result page
    Examples:
      | keyword      | result       |
      | mobile phone | mobile phone |
      | big data     | big data     |

#    Given a blog post named "Random" with Markdown body
#  """
#  Some Title, Eh?
#  ===============
#  Here is the first paragraph of my blog post. Lorem ipsum dolor sit amet,
#  consectetur adipiscing elit.
#  """