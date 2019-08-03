def map(array)
  
  new_arr = []
  array.each do |ele|
    new_arr << yield(ele)
  end
  new_arr
end


map([1, 2, 3, -9]) {|n| n *-1}
map([1, 2, 3, -9]) {|n| n}
map([1, 2, 3, -9]) {|n| n*2}
map([1, 2, 3, -9]) {|n| n **2}








# def reduce(array, value*)
  
#   array.each do |ele|
#     yield(ele, value)
#   end
#   value
# end


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

reduce([1, 2, 3, -9], 0) { |total, ele| total = ele + total}
    





