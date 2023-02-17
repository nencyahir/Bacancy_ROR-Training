class Lasanga 
    	EXPECTED_MINUTES_IN_OVEN=40
	puts "expected minutes is #{EXPECTED_MINUTES_IN_OVEN}"
 
	def remaining_minutes_in_oven(t)
	  @result=EXPECTED_MINUTES_IN_OVEN-t
	  puts "remaining #{@result}"
	  return @result
	end

	def preparation_time_in_minutes(l)
	  @k=l * 2
	  puts "Layer #{@k}"
	  return @k
	end


	def total_time_in_minutes (time,layer)
	  final_time = remaining_minutes_in_oven(time) + preparation_time_in_minutes(layer)
	  print"Total Time:  #{final_time}"
	end
end

obj1=Lasanga.new

obj1.remaining_minutes_in_oven(20)
obj1.preparation_time_in_minutes(3)
obj1.total_time_in_minutes(20,3)
