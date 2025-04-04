/*
 Author: Eric Valle
 LeetCode: 121. Best Time to Buy and Sell Stock
 
 Description:
    You are given an array prices where prices[i] is the price of a given stock on the ith day.
 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 
 Link: (https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/)
 */

/* NAIVE APPROACH */
//func maxProfit(_ prices: [Int]) -> Int {
//    var maxProfit = 0
//
//    //For each value in array, see if there is a higher value down list
//    for i in 0..<prices.count {
//        for j in i+1..<prices.count {
//            //If higher value, calculate profit
//            if prices[j] > prices[i] {
//                let profit = prices[j] - prices[i]
//                //Compare profits for maximum profit
//                maxProfit = max(maxProfit, profit)
//            }
//        }
//    }
//
//    return maxProfit
//}

/* KADANE'S ALGORITHM */
//func maxProfit(_ prices: [Int]) -> Int {
//    var minPrice = Int.max
//    var maxProfit = 0
//
//    //For each value in array, find minPrice and maxProfit
//    for price in 0..<prices.count {
//        print("\nDay: ", price)
//        print("Day's price: ", prices[price])
//        minPrice = min(minPrice, prices[price])
//        print("minPrice: ", minPrice)
//        maxProfit = max(maxProfit, prices[price] - minPrice)
//        print("maxProfit: ", maxProfit)
//        
//    }
//
//    return maxProfit
//}

/* LEETCODE ANSWER */
func maxProfit(_ prices: [Int]) -> Int {
   guard prices.count > 0 else {
    return 0
    }

    var maxProfit = 0
    var minPrice = prices[0]

    for price in prices {
        let profit = price - minPrice
        minPrice = min(price, minPrice)
        maxProfit = max(profit, maxProfit)
    }
    return maxProfit > 0 ? maxProfit : 0
}


/* TEST VALUES */
var prices = [7,1,5,3,6,4]
//profit: 5
maxProfit(prices)

prices = [7,6,4,3,1]
//profit: 0
maxProfit(prices)


