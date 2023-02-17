 class Interest

    def simple_interest(balance)
      actual_balance= balance
      if (actual_balance < 1000) 
          print "Interest is: 0.5"
      elsif (actual_balance >=1000 && actual_balance < 5000) 
          print "Interest is: 1.621"
      elsif (actual_balance >= 5000) 
          print "Interest is: 4.275"
      else (actual_balance < 0) 
          print "Interest is: 3.213"  
      end
      
    end
    
    def actual_updated_balance(balance)    
      if (balance < 1000) 
          result = (balance * 0.5 /100) + balance
          print "\n Actual balance is : #{result}"
      elsif (balance >=1000 && balance < 5000) 
          result = (balance * 1.621 /100) + balance
          print "\n Actual balance is : #{result}"
      elsif (balance >= 5000) 
               result = (balance * 4.275 /100) + balance
          print "\n Actual balance is : #{result}"
      else (balance < 0) 
          result = (balance * 3.213 /100) + balance
          print "\n Actual balance is : #{result}"
      end    
     
    end
    
    def years_before_desired_balance(a,b)
  
	 @years=0
	 while (a<b)
	   @years =@years + 1
	   a = a + 1
	 end 
	 puts "\n#{@years}"
    end
end

interest = Interest.new
interest.simple_interest(200.75)
interest.actual_updated_balance(200.75)
interest.years_before_desired_balance(200.75, 214.88)
