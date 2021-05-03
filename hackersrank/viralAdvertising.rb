def viralAdvertising(n)
  shared = 5
  liked = 0
  cumulative_like = 0
  (1..n).each do |d| 
    liked = shared/2
    cumulative_like = liked + cumulative_like
    shared = liked*3
  end 
  cumulative_like
end

p viralAdvertising(5)
