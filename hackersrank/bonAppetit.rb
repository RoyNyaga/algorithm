def bonAppetit(bill, k, b)
  actual_charge = (bill.sum - bill[k]) / 2
  if actual_charge == b 
    return "Bon Appetit"
  else 
    return b - actual_charge
  end 
  # bill[k]
end

p bonAppetit([3,10,2,9], 1, 12)