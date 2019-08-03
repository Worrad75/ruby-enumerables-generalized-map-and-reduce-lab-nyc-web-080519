
def map(array)
  
  new_arr = []
  array.each do |ele|
    new_arr << yield(ele)
  end
  new_arr
end



def reduce(array, value=nil)

  if value
    acc = value
    i = 0
  else
    acc = array[0]
    i = 1
  end
  
  while i < array.length
   acc = yield(acc, array[i])
    i += 1
  end
  acc
  
end
    





