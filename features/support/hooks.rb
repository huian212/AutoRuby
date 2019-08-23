Before do
  puts "before scenario"
end

After do |scenario|
  puts "after scenario"
end

#Cucumber-Ruby does not support BeforeStep hooks.
AfterStep do |scenario|
  puts "after step"
  sleep 2
end

at_exit do
  puts "at exit"
end