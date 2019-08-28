#require Gems
puts "require Gems..."
require 'Watir'
require 'cucumber'
require 'require_all'
require 'rake'
require 'cucumber/rake/task'

#require all Pages
puts "require all Pages..."
require_all 'Pages/'

#include all pages
puts "include all pages..."
include BasePage
include HomePage
include SearchResultPage



puts "you choose to run test with: "+ ENV["BROWSER"].to_s

puts "starting browser..."
case ENV["BROWSER"].to_s.downcase
when "chrome"
  $browser = Watir::Browser.new :chrome
when "chrome-headless"
  $browser = Watir::Browser.new :chrome, headless: true
when "safari"
  $browser = Watir::Browser.new :safari
when "firefox"
  $browser = Watir::Browser.new :firefox, profile: 'default'
when "IE"
  $browser = Watir::Browser.new
else
  $browser = Watir::Browser.new
end
