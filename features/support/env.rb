#require Gems
puts "require Gems..."
require 'Watir'
require 'cucumber'
require 'require_all'
require 'assert'

#require all Pages
puts "require all Pages..."
require_all 'Pages/'


#include all pages
puts "include all pages..."
include BasePage
include HomePage
include SearchResultPage

puts "starting browser..."
$browser = Watir::Browser.new
