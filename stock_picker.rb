def stock_picker(prices)
    profit = 0
    buy_counter = 0
    sell_counter = 1
    buy_day = nil
    sell_day = nil

    while buy_counter < prices.length and sell_counter < prices.length
        if sell_counter == prices.length-1
            if (prices[sell_counter] - prices[buy_counter]) > profit
                profit = (prices[sell_counter] - prices[buy_counter])
                buy_day = buy_counter
                sell_day = sell_counter
            end
            buy_counter += 1
            sell_counter = buy_counter + 1
        end
        if (prices[sell_counter] - prices[buy_counter]) > profit
            profit = (prices[sell_counter] - prices[buy_counter])
            buy_day = buy_counter
            sell_day = sell_counter
        end
        sell_counter +=1 
    end
    puts "\n"
    puts "For the highest profit you should buy on day #{buy_day+1} for $#{prices[buy_day]}, and sell on day #{sell_day+1} for $#{prices[sell_day]}."
    puts "This will give you a profit of $#{prices[sell_day]} - $#{prices[buy_day]} = $#{prices[sell_day] - prices[buy_day]}"
    puts "\n"
end

stock_picker([17,3,6,9,15,8,6,1,10])