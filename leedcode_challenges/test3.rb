def numPlayers(k, scores)
  sorted_scores = scores.sort{ |a, b| b <=> a }
  rank = 1
  rank_arr = []
  skip = 0
  sorted_scores.each_with_index do |score, index|
    
    if index == 0
      rank_arr << rank
    elsif score == sorted_scores[index-1] 
      rank_arr << rank
      skip = skip + 1
    elsif score < sorted_scores[index - 1]
      rank = rank + 1 + skip
      rank_arr << rank
      skip = 0
    end
  end 
  ans = rank_arr.select{ |a| a <= k}
  return ans.count
end

p numPlayers(3, [100,50,50, 50,60,25])