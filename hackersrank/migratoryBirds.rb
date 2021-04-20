def migratoryBirds(arr)
  arr_hash = {}
  arr.each do |v| 
    if arr_hash[v]
      arr_hash[v]+=1
    else
      arr_hash[v] = 1
    end
  end 

  max_frequency = arr_hash.values.max
  keys_with_max_frequency = []
  arr_hash.each do |key, value|
    keys_with_max_frequency << key if value == max_frequency
  end 
  keys_with_max_frequency.min
end

p migratoryBirds([1,2,3,4,5,4,3,2,1,3,4])
p migratoryBirds([1,1,2,2,3])
