def fibonaccis(a,b)
 x=[]
 x[0]=a
 x[1]=a+1
 a+=1
 for i in 2..b
  x[i]=a
  a+=1
 end
 for i in 2..b
  x[i]=x[i-1]+x[i-2]
 end
 for i in 0..b
  print "#{x[i]},"
 end
end
puts "enter the starting term"
c=gets.to_i
puts "enter the number of terms"
d=gets.to_i
fibonaccis(c,d)
