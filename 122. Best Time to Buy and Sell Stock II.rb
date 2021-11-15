
def max_profit(prices)
  buy = nil
  sell = nil
  result = 0
  for i in 0..prices.length-1
    if buy == nil && i < prices.length-1 && prices[i] < prices[i+1] then buy = prices[i] end  
    if sell == nil && i < prices.length && buy!=nil
      if i == prices.length-1
        sell = prices[i]
      elsif(prices[i]>prices[i+1])
        sell = prices[i]
      end
     end
      puts "buy is #{buy} and sell is #{sell}"
    if buy != nil && sell != nil && (sell > buy)

      result = result + (sell-buy)
       sell=nil;buy=nil; 
       puts result
    
    end 
  end
  return result
    end

 #prices = [7,6,4,3,1]
 #prices=[7,1,5,3,6,4]
#prices=  [2,1,2,0,1]
prices = [1,2,3,4,5]

pp max_profit(prices)
