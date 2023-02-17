class Logicaloperator
	def operators
		@num1= true
		@num2= false
		
		print "\nValue of num1 is : true"
		print "\nValue of num2 is : false"
		
		a = @num1 and @num2
		print "\n\nValue of a using and operator: #{a}"
		
		a = (@num1 and @num2)
		print "\nValue of a using and operator with the () : #{a}"
		
		b = @num1 && @num2
		print "\nValue of b using && operator: #{b}"
		
		(b = @num1) && @num2
		print "\nValue of b using && operator with the (): #{b}"
	end
end
operator=Logicaloperator.new
operator.operators

