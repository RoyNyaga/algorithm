def carParkingRoof(cars, k)
  sorted_cars = cars.sort
  mix_arr = sorted_cars.combination(k).to_a
  minimum_length = 10000
  mix_arr.each do |arr| 
    p arr
    d = arr[k-1] - arr[0]
    if d < minimum_length 
      minimum_length = d
    end 
  end
  return minimum_length + 1
end

p carParkingRoof([ 2, 10, 8, 17 ], 3)