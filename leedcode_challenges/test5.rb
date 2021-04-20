def reachTheEnd(grid, maxTime)
  total_unblock = 0 
  grid.each do |g|
    unblocked = g.delete("#").length 
    total_unblock = total_unblock + unblocked
  end

  total_unblock >= maxTime ? "yes" : "no"
end

p reachTheEnd([".#", "#."], 2)