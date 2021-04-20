require "byebug"

# def max_profit(prices)
#   count = 0
#   max_profit = 0
#   profit = 0
#   loop do 
#     count += 1
#     profit = prices[count] - prices[0] if count < prices.length
#     max_profit = profit if profit > max_profit
#     if count == prices.length
#         prices.shift 
#         count = 0
#     end 
#     break if prices.length == 1
#   end 
#   return max_profit > 0 ? max_profit : 0
# end 

def max_profit(prices)
  profit = 0
  max_profit = 0
  for a in prices do
    for j in prices do
      profit =  j - a
      max_profit = profit if profit > max_profit
      byebug
    end
    prices.shift
  end
  return max_profit
end 

p max_profit([7,1,5])
# p max_profit([7,6,4,3,1])
