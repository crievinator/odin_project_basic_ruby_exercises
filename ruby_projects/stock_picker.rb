stock_prices_per_day = [17,3,6,9,15,8,6,1,10]

def stock_picker(arr)
  all_combinations = arr.combination(2).to_a
  summed_combinations = all_combinations.map { |i| i.last - i.first }

  position = summed_combinations.index(summed_combinations.max)
  p combo =  all_combinations[position]
  p "Best trade would be when you bought for #{combo[0]} euro and sold for #{combo[1]} euro. 
  When you bought day #{arr.index(combo.first)} and sold day #{arr.index(combo.last)}"
end

stock_picker(stock_prices_per_day)