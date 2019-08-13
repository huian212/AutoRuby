#require gems
require 'require_all'

#require dirver
require '../Driver'

#require pages
require_all '../Pages/'


#execute test
include HomePage

HomePage.open
HomePage.search_box.set "ddd"
HomePage.submit_btn.click
sleep 3000