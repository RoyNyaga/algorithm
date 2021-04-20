def gradingStudents(grades)
  final_result = []
  grades.each do |grade| 
    if grade < 38
      final_result << grade
    else  
      next_multiple_of_5 = (grade/5 + 1) * 5
      if next_multiple_of_5 - grade < 3
        final_result << next_multiple_of_5
      else
        final_result << grade
      end
    end 
  end 
  return final_result
end
p gradingStudents([73,67,38,33])