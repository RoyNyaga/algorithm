def two_sum(nums, target)
  dict = {}
  nums.each_with_index do |n, i|
    if dict[target - n]
      return dict[target - n], i
    end
    dict[n] = i
  end
  dict
end

p two_sum([2,7,15,11], 9)
