require 'date'


birthday = DateTime.new(2002,1,24,2,30,0)


puts "Current time is:" + Time.now.to_s
puts"Birthday is: #{ birthday.to_time}"

seconds = Time.now - birthday.to_time
minutes = seconds / 60
hours = minutes / 60
days = hours / 24
months = days / 30.44
years = months / 12


puts "Age is #{years.to_i} year #{(months % 12).to_i} month #{(days % 30.44).to_i} days #{(hours % 24).to_i} hours and #{(minutes % 60).to_i} minutes"
