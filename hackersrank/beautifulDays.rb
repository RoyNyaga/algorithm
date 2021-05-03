def beautifulDays(i, j, k)
  beautiful_days = 0
  (i..j).each do |day| 
    reverse_num = day.to_s.reverse.to_f
    difference = day.to_f - reverse_num 
    beautiful_days+=1 if difference%k == 0
  end 
  beautiful_days
end

p beautifulDays(20,23,6)

