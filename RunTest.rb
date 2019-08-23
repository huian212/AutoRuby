browser = ARGV[0].to_s
puts "cucumber BROWSER="+browser+" features --tags 'not @wip' --format html > report.html"
exec("cucumber BROWSER="+browser+" features --tags 'not @wip' --format html > report.html")
