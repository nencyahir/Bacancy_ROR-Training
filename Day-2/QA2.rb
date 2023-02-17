class Keywords
  i=1
  j=1
  
  #next keyword
  print "Using next keyword\n"
  for j in 1..10 do
    next if(j==3)
    print "#{j} "
  end
  
  #break keyword
  print "\nUsing break keyword\n"
  while (i<=10)
    print "#{i} "
    i = i+1	
    if(i>5) then
    	break
    end
   end
   
end



  
  
