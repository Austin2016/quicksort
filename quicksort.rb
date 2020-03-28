

def quick(array) #optimized versin 
  
  if array.length <= 1
    return array 
  end  

  pivot = array[array.length / 2]
  right_array = []
  left_array = []
  pivot_array = [] 

  for i in 0..(array.length - 1) do   
  	if array[i] > pivot
  	  right_array.push( array[i] )
  	elsif array[i] < pivot 
  	  left_array.push( array[i])
    else 
      pivot_array.push( array[i] )
    end 
  end  

  
  return quick(left_array) + pivot_array + quick(right_array)
end 

def nicer_quick(array)

  if array.length <= 1
    return array 
  end 

  pivot = array[array.length / 2]

  right_array = array.select do |e|
  	e > pivot
  end 
  left_array = array.select do |e|
  	e < pivot
  end 
  pivot_array = array.select do |e|
  	e == pivot
  end 

  return nicer_quick(left_array) + pivot_array + nicer_quick(right_array)
end 

a = Array.new(10000000) {rand(1000)}
puts "start"
puts "start"
puts "start"
puts "start"
print quick(a)
puts 'finished quick'
puts 'finished quick'
print nicer_quick(a)



