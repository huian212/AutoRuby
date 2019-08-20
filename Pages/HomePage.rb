module HomePage extend BasePage
  URL = "www.baidu.com"

  def search_box
    $browser.text_field(id: 'kw')
  end

  def submit_btn
    $browser.button(id:'su')
  end

end
