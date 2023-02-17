class Havmore
    @@inc=1
    
    def initialize(name,price)
        @pname = name
        @pprice = price
    end
  
    def get_ip
    	print "\n\n******************** For Product #{@@inc} ************************ "
        print "\n\nenter your name:"
        @fname=gets
        print "enter gst:"
        @gst=gets
    end
    
    def calc
    	@tprice = @pprice.to_i * @gst.to_i
        @ttprice = @tprice / 100
        @totalprice = @ttprice.to_i + @pprice.to_i
    end
    
    def print_op
        p "\nWelcome #{@fname} Your invoice with #{@gst}% gst are below\n"
        print "\nProduct details with orignal price:\n"
        print"#{@pname} - #{@pprice}"
        print "\n\nproduct details with gst:\n"
        print "#{@pname} - #{@totalprice}"
        @@inc=@@inc + 1
    end
    

end

product1=Havmore.new("Chocobar","100")
product1.get_ip
product1.calc
product1.print_op

product2=Havmore.new("Raspberry","20")
product2.get_ip
product2.calc
product2.print_op

#ans 2

class User
  CONST_VAR='valsad'
  def initialize(visitor)
  	@@user=visitor
  end
end

class Company < User
  def initialize(office)
  	@company=office
  end
  
  def printOP()
  puts "\n City name is #{CONST_VAR}"
  puts " Company name is #{@company}"
  puts " User name is #{@@user}"
  end
 
end


user=User.new('Krupa')
company=Company.new('Bacancy')
company.printOP

