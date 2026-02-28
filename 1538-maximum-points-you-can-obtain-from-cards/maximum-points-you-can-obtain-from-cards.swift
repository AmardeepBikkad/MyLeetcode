class Solution {
    func maxScore(_ cardPoints: [Int], _ k: Int) -> Int {
        var result = 0, sum = 0
        for i in 0..<k {
            result += cardPoints[i]
        }
        sum = result
        for i in 1...k {
            sum -= cardPoints[k-i]
            sum += cardPoints[(cardPoints.count)-i]
            result = max(result, sum)
        }
        return result
    }
}