class Comparisonoperator
	@a = "a"
	@b = "a"
	
	@c = @a .eql? @b
	@d = @a .equal? @b
	
	print"\nObject id of a: #{@a.object_id}"
	print"\nObject id of b: #{@b.object_id}"
	print "\nvlaue of c: #{@c}"
	print "\nvlaue of d: #{@d}"
	
end


