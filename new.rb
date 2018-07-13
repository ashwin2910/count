def sum_of_cubes(c,d)
  i=c
  x=0
  for i in c..d
   x+=i**3
   i+=1
  end
puts x
end
puts "Enter the starting"
a=Integer(gets.chomp)
puts "Enter the stoping"
b=Integer(gets.chomp)
sum_of_cubes(a,b)   
