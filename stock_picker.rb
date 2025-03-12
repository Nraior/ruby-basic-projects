def stock_picker(stock_prices)
  max_profit = -Float::INFINITY
  best_days = [0, 0]

  stock_prices.each_with_index do |buy_price, buy_day|
    best_sell_value, best_sell_day = stock_prices[buy_day..].each_with_index.max
    # correct day
    best_sell_day += buy_day 

    difference = best_sell_value - buy_price
    if difference > max_profit
      max_profit = difference
      best_days = [buy_day, best_sell_day]
    end
  end
  best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])

def stock_picker_linear(stock_prices)
  minimum = Float::INFINITY
  profit = -Float::INFINITY
  best_days = [0,0]
  min_day_index = 0
  stock_prices.each_with_index do |stock_price, index|
    if stock_price < minimum
      minimum = stock_price 
      min_day_index = index
    end

    current_sell_profit_possibility = stock_price - minimum

    if current_sell_profit_possibility > profit
      profit = current_sell_profit_possibility 
      best_days[1] = index
      best_days[0] = min_day_index
    end
  end
  best_days
end

p stock_picker_linear([17,3,6,9,15,8,6,1,10, 0,3])
