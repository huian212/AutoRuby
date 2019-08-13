require 'Watir'

@browser = Watir::Browser.new
@browser.goto "www.baidu.com"
@browser.text_field(id: 'kw').set "ssss"
@browser.button(id:'su').click
sleep(3000)