def stock_picker(prices_per_day)
  best_buy = Array.new

  prices_per_day.each do | buy_price |
    prices_per_day.each do | sell_price |
      best_buy.push([sell_price-buy_price, prices_per_day.rindex(buy_price), prices_per_day.rindex(sell_price)]) if prices_per_day.rindex(sell_price) > prices_per_day.rindex(buy_price)
    end
  end
  return best_buy.max[1,2]
end
