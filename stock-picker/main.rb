def stock_picker(stocks) 
  x = 0
  y = 0
  stock_pick = []
  profit = 0
    
  while x < stocks.length
    if y == stocks.length
      x += 1
      y = x+1
    elsif (stocks[y] - stocks[x]) > profit
      profit = stocks[y] - stocks[x]
      stock_pick = [x, y]
      y += 1
    else
      y += 1
    end
  end
  stock_pick
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])