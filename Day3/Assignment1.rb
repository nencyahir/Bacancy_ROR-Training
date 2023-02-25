EXPECTED_MINUTES_IN_OVEN=40
CONSTANT_TWO=2

class Lasanga 

	puts "expected minutes is #{EXPECTED_MINUTES_IN_OVEN}"
 
	def remaining_minutes_in_oven(time)
	  result=EXPECTED_MINUTES_IN_OVEN-time
	  puts "remaining #{result}"
	  return result
	end

	def preparation_time_in_minutes(layer)
	  totallayer=layer * CONSTANT_TWO
	  puts "Layer #{totallayer}"
	  return totallayer
	end
	
       def total_time_in_minutes (time,layer)
	  puts"Total Time:#{ final_time = remaining_minutes_in_oven(time) + preparation_time_in_minutes(layer)}"
       end	
end

lasanga_obj=Lasanga.new
lasanga_obj.remaining_minutes_in_oven(20)
lasanga_obj.preparation_time_in_minutes(3)
lasanga_obj.total_time_in_minutes(20,3)
