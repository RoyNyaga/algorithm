def distictPassword(input1, input2)
  com = input2.combination(2).to_a
  com
end 

p distictPassword(7, ["pass1","pass2","pass3","pass4"])