class DataDictionary
	phonebook = File.read("phonebook.txt")
	@@hash_data = eval(phonebook)

	def find_number
		print "Enter your name: "
		name= gets.chomp
		if @@hash_data.has_key?(name)
			puts "Phone number: #{@@hash_data[name]}"
			return @@hash_data
		else
		  puts "Name not found"
		end
	end

	def save_number
		print "Enter name: "
    name = gets.chomp
    print "Enter phone number: "
    number = gets.chomp
    if @@hash_data.has_key?(name)
      puts "Name already exists"
    elsif @@hash_data.has_value?(number)
      puts "Number already exists"
    else
      @@hash_data[name] = number
      puts "Data added successfully!!!!" 
      return @@hash_data
    end
	end
	
	def delete_number
		puts "\nPlease Select your Choice from below Option:"
    puts "1. Delete entry by name"
    puts "2. Delete entry by number"
    puts "Enter your choice"
    choice_for_delete = gets.chomp.to_i
    
    case choice_for_delete
    when 1
      print "Enter name: "
      name = gets.chomp
      if @@hash_data.has_key?(name)
        @@hash_data.delete(name)
        puts "Data deleted successfully"
       	return @@hash_data
      else
        puts "Name not found"
      end
      
    when 2
      print "Enter number: "
      number = gets.chomp
      if @@hash_data.has_value?(number)
        key = @@hash_data.key(number)
        @@hash_data.delete(key)
        puts "Data deleted successfully"  
        return @@hash_data
      else
        puts "Number not found"
      end
    else
      puts "Please enter valid choice..."   
    end
	end
	
end

data = DataDictionary.new
puts "**************************Phonebook Option Menu **************************"
puts "1.Search"
puts "2.Save"
puts "3.Delete"
puts "*************************************************************************"
puts "Enter your choice:"

ch = gets.chomp

case ch
when "1"
	result= data.find_number
when "2"
	result= data.save_number
when "3"
	result= data.delete_number
else
	puts "please enter valid choice"
end


File.open("phonebook.txt","w") do |f|
	f.write("#{result.to_s}")
end unless result.nil?



