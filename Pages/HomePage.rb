module HomePage extend BasePage
  URL = "www.bing.com"


  def search_box
    $browser.text_field(id: 'sb_form_q').wait_until(&:present?)
  end

  def submit_btn
    $browser.div(id:'sb_go_par').wait_until(&:present?)
  end
end
