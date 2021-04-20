# def dayOfProgrammer(year)
#   # month_days = { 1: 31, 2: 28, 3: 31, 4: 30, 5: 31, 6: 30, 7: 31, 8: 31, 9: 30, 10: 31, 11: 30, 12: 31 }
#   # return year%4 == 0 ? "12.09.#{year}" : "13.09.#{year}"
#   if year%400 == 0 
#     return "12.09.#{year}"
#   elsif year%4 == 0 && year%100 > 0 
#     return "12.09.#{year}"
#   else
#     p "here"
#     return "13.09.#{year}"
#   end 
# end
def dayOfProgrammer(year)
  if year == 1918
      return "26.09.1918"
  end 
  if year % 4 == 0 and (year < 1918 or year % 400 == 0 or year % 100 != 0)
      return "12.09.%s" % year
  end 
  return "13.09.%s" % year
end 
p dayOfProgrammer(1800)