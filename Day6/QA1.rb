

data = File.read("array.txt").split(",").map(&:to_i)


counts = Hash.new(0)
cnt = Proc.new{data.each { |element| counts[element] += 1 }}
cnt.call
puts counts

h={}
h1={}

counts.each do |key, value|
	if value > 1
		h[key] = value
	else
	  h1[key] = 1
		@f= File.open("output.txt",'a')
	end
end 

print h
@f.write(h1)


