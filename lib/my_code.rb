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




def reduce(array, value) { 
  
  if value != false && value != true
   if (value < 0) { 
    acc = array[0]
   } else {
    acc = value
   }
   array.each do |i| {
    acc = yield(array[i], acc)
   }
   return acc;
  }
  
else
  array.each do {
    acc = yield(acc)
   }
   return acc
 end
end




reduce([1, 2, 3, -9], 0) { |ele, total| total = ele + total}
    





