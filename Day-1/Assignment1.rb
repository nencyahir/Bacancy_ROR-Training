COMPANY_NAME = "Havmore"
$productcompany = "Havmore & more"
class Product
    @@inc=1
    
    def initialize(name,price)
        @productname = name
        @productprice = price
    end
  
    def getdetails
    	puts "\n**********************Welcome #{COMPANY_NAME} ******************************** "
    	print "\n\n******************** For Product #{@@inc} ************************ "
        print "\n\nenter your name:"
        @fname=gets
        print "enter gst:"
        @gst=gets
    end
    
    def calc
    	product_price = @productprice.to_i * @gst.to_i
        total_price = product_price / 100
        @totalprice = total_price.to_i + @productprice.to_i
    end
    
    def printdetails
    	 
        p "\nWelcome #{@fname} Your invoice with #{@gst}% gst are below\n"
        print "\nProduct details with orignal price:\n"
        print" #{$productcompany} : #{@productname} - #{@productprice}"
        print "\n\nproduct details with gst:\n"
        print "#{$productcompany} : #{@productname} - #{@totalprice}"
        @@inc=@@inc + 1
    end
    

end

product1=Product.new("Chocobar","100")
product1.getdetails
product1.calc
product1.printdetails

product2=Product.new("Raspberry","20")
product2.getdetails
product2.calc
product2.printdetails

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
  
  def printOP
  puts "\n\nCity name is #{CONST_VAR}"
  puts "Company name is #{@company}"
  puts "User name is #{@@user}"
  end
 
end


user=User.new('Krupa')
company=Company.new('Bacancy')
company.printOP
