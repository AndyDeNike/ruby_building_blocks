#Implement a method #stock_picker 
#that takes in an array of stock prices,
#one for each hypothetical day. 
#It should return a pair of days representing 
#the best day to buy and the best day to sell. 
#Days start at 0.

def stock_picker (stock_array)
  best_day = [0,0] #creates an array to store best day to buy/sell 
  last_day = stock_array.length - 1 #minus one to capture all array indexes properly
   
  (0..last_day).each do |buyday| #creates a range 0 to last_day....iterating through each index, buyday represents the current buy day in the stock_picker array index 
    (buyday..last_day).each do |sellday| #buyday is established and range is formed to last_day; for each of these stored buyday, do sellday
      maybe_best_day = stock_array[sellday] - stock_array[buyday]  #mbd stores stock_array sellday and subtracts the buyday purchase price resulting in net gain for the potential days
      current_best_day = stock_array[best_day[1]] - stock_array[best_day[0]]  #cbd stores day with the most positive netgain at respective point of the loop 
      
      if maybe_best_day > current_best_day  #determines if mbd is greater than cbd, if so best_day captures current iterations buyday/sellday in updated best_day
        best_day = [buyday, sellday]
      end 
    
    end   
  end 
  best_day == [0,0] ? nil : best_day
  
  
end 


 
stock_picker([17,3,6,9,15,8,6,1,10]) 
 