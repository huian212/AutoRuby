module SearchResultPage extend BasePage

def top_searchboxs
  $browser.text_field(id:'sb_form_q').wait_until(&:present?)
end

end
