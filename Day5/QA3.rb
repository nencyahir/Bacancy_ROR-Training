require 'date'


def dateTime(startyear,endyear,date)
date_t=DateTime.parse(date)
year=date_t.year
for year in startyear..endyear
  puts "Start Year:#{startyear}"
  puts "End Year:#{endyear}"
  puts "#{date}"
  puts "Yes, #{date_t.strftime('%d-%m-%Y')} is between 01-01-#{startyear} to 01-01-#{endyear}"
  break
end

end

dateTime(2010,2020,"Tue, 10 Aug 2010")

