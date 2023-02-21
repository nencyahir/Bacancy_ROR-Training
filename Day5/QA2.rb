puts "Hello!! Please enter your info to built your friutful resume...."


puts "Enter Your Name: "
name=gets.chomp
puts "Enter Your Age: "
age=gets.chomp
puts "Enter Your Address: "
address=gets.chomp
puts "Enter Your Email-id"
email=gets.chomp
puts "Enter Your Phone Number"
number=gets.chomp
puts "Enter Your Experience"
experience=gets.chomp
puts "Enter your hobby"
hobby = gets.chomp

file = File.open("resume.txt","a+")

file.write("Name: #{name}\n")
file.write("Age: #{age}\n")
file.write("Address: #{address}\n")
file.write("Email: #{email}\n")
file.write("Contact No.: #{number}\n")
file.write("Experience: #{experience}\n")
file.write("Hobby: #{hobby}\n")

file_r = File.new("resume.txt", "r")
if file_r
   content = file_r.sysread(20)
   puts content
else
   puts "Unable to open file!"
end

puts "Yor Resume created sucessfully!!!"
