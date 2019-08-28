require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:finished) do |t|
  t.cucumber_opts = "--format html > report.html"
  t.cucumber_opts = "--tags 'not @wip'"
  t.cucumber_opts = "BROWSER=chorme"
  #exec("cucumber BROWSER="+browser+" features --tags 'not @wip' --format html > report.html")
end

Cucumber::Rake::Task.new(:wip) do |t|
  t.cucumber_opts = "--format html > report.html"
  t.cucumber_opts = "--tags '@wip'"
  t.cucumber_opts = "BROWSER=chorme"
  #exec("cucumber BROWSER="+browser+" features --tags 'not @wip' --format html > report.html")
end