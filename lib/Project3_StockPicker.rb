# frozen_string_literal: true
# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day.
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
#
#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12
# Quick Tips:
#
# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

price_cost=[17,3,6,9,15,8,6,1,10]
def stock_picker(price_cost)
  array_profit=[]
  day_buy=0
  while day_buy<price_cost.length()-1
      profix_max_temp=0
      for day_sell in day_buy+1..price_cost.length()-1
        if price_cost[day_sell]>=price_cost[day_buy]
          if price_cost[day_sell]-price_cost[day_buy]>profix_max_temp
            profix_max_temp=price_cost[day_sell]-price_cost[day_buy]
          end
        end
      end
      array_profit.push(profix_max_temp)
      day_buy+=1
  end
  profix_max= array_profit.max
  day_buy_index=0
  day_sell_index=0
  price_sell=0
  array_profit.each_with_index do |profix,index|
    if profix==profix_max
      day_buy_index= index
      break
    end
  end
  price_sell=profix_max+price_cost[day_buy_index]
  price_cost.each_with_index do |price,index|
    if price_sell==price
      day_sell_index=index
    end
  end
  return [day_buy_index,day_sell_index]
end

puts stock_picker(price_cost)