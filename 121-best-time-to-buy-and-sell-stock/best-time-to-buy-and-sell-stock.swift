class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit = 0 
        var minBuy = prices[0]

        for price in prices {
            if price < minBuy {
                minBuy = price
            } else {
                maxProfit = max(maxProfit, price - minBuy)
            }
        }
        return maxProfit
    }
}