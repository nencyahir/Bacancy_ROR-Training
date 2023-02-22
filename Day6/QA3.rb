elements = ['two', 'three', 'one']
hash_to_be_sorted = {'three' => 3, 'two' => 2, 'one' => 1}

sort_hash=Proc.new{
	elements.map{|key| [key, hash_to_be_sorted[key] ] }.to_h
}

puts sort_hash.call
