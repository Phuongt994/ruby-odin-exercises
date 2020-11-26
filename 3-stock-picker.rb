# Stock picker - Odin project ruby exercises
# TODO: handle corner case where buy_price is at end of array

def stock_picker(prices)
    max_profit, profit, sell_price, buy_price = 0
    prices.each_with_index do |price, index|
        if index < prices.length - 1 && price < prices[index+1] 
            focus_prices = prices[index+1..prices.length]
            focus_prices.each do |potential_sell_price|
                profit = potential_sell_price - price
                if max_profit < profit 
                    max_profit = profit
                    sell_price = potential_sell_price 
                    buy_price = price
                end
            end
        else  
            return "best buy price is at last index!"
        end
    end
    return max_profit, sell_price, buy_price
end

p stock_picker([17,15,14,13,12,11,10,9,1])
# => [1,4]  # for a profit of $15 - $3 == $12