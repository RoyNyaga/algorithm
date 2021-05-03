def utopianTree(n)
  initialHeight = 1
  growth = []
  def spring(v)
    return v * 2
  end 

  def summer(v)
    return v + 1
  end 
  
  (0..n).each do |cycle|
    if cycle == 0 then
      growth << initialHeight
      next
    end 

    (1..cycle).each do |c|
      if c%2 != 0 then
        initialHeight = spring(initialHeight)
        puts c
        puts initialHeight
      else
        initialHeight = summer(initialHeight)
        puts c
        puts initialHeight
      end 
    end
    growth << initialHeight
    initialHeight = 1
  end 
  growth
end

p utopianTree(3)
 

