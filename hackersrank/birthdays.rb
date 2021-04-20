def birthday(s, d, m)
  val = 0
  next_cycle = 0
  sub_arr = []
  parent_arr = []
  loop do 
    sub_arr << s[val]
    if sub_arr.length == m 
      parent_arr << sub_arr
      sub_arr = []
      next_cycle += 1
      val = next_cycle - 1
    end

    break if s.length - next_cycle < m

    val+=1
  end
  ans = 0
  parent_arr.each{ |v| ans+=1 if v.sum == d }
  return ans
end
 arr =[2,3,4,4,2,1,2,5,3,4,4,3,4,1,3,5,4,5,3,1,1,5,4,3,5,3,5,3,4,4,2,4,5,2,3,2,5,3,4,2,4,3,3,4,3,5,2,5,1,3,1,4,2,2,4,3,3,3,3,4,1,1,4,3,1,5,2,5,1,3,5,4,3,3,1,5,3,3,3,4,5,2]

# p birthday([2,2,1,3,2], 4, 2)
p birthday(arr, 26, 8)

