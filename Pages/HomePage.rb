require '../Pages/BasePage'

include BasePage

module HomePage extend BasePage
  URL = "www.baidu.com"

  def open
    $browser.goto URL
  end

  def search_box
    $browser.text_field(id: 'kw')
  end

  def submit_btn
    $browser.button(id:'su')
  end

end
