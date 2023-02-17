class Keywords
  @i=1
  @k=2
  
  #redo keyword
  print "\n Using redo keyword"
  while(@i<=5)
    @j = @i * 2
    print "#{@j} "
    @i = @i+1
    redo if(@j == 10)
   end
end
