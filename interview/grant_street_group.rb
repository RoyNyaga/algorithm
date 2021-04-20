def solution(a, k)
  i = 0
  n = a.length
  for i in 0 .. (n - 2)
      if (a[i] + 1 < a[i + 1]) then
          return false
      end
  end
  if (a[0] != 1) and (a[n - 1] != k) then
      return false
  else
      return true
  end
end

p solution([1,2,3], 3)
p solution([1,2,3], 5)
