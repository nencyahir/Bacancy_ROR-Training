class Starpattern
  print "\nPattern-1\n"
  @i=5
  while(@i>=1)
    @j=1
    while(@j<=@i)
     print "* "
     @j += 1
    end
    puts
    @i -= 1
    end
end

class Numberpattern
  print "\nPattern-2\n"
  @@i = 1
  @@j = 1
  for @@i in 1..5 do
    for @@j in 1..@@i do
      print @@j
     end
  puts
  end
end

