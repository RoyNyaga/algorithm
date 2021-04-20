def breakingRecords(scores)
  # 10 5 20 20 4 5 2 25 1
  break_point = scores[0]
  max_break_record = 0
  min_break_record = 0
  scores.each do |score| 
    if score > break_point 
      break_point = score
      max_break_record += 1
    end 
  end 

  break_point = scores[0]

  scores.each do |score| 
    if score < break_point
      break_point = score 
      min_break_record += 1
    end 
  end 
  return [max_break_record, min_break_record]
end

p breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1])
p breakingRecords([3, 4, 21, 36, 10, 28, 35, 5, 24, 42])