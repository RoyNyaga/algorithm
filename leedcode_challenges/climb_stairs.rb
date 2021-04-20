def climb_stairs(n)
  return 0 if n == 0
  a, b = 0, 1
  n.times { a, b = b, b + a }
  b
end

puts climb_stairs(1)
puts climb_stairs(2)
puts climb_stairs(3)
puts climb_stairs(4)
puts climb_stairs(5)

