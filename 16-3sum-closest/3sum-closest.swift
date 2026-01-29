class Solution {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        var result = nums.sorted()
        var resultSum = 0
        var maxDiff: Int = .max

        for i in 0..<result.count - 2 {
            var left = i + 1
            var right = result.count - 1
            while left < right {
                let sum = result[i] + result[left] + result[right] 
                sum > target ? (right -= 1) : (left += 1)
               
                let diff = abs(target - sum)
                if maxDiff > diff {
                    maxDiff = diff
                    resultSum = sum 
                }
            }
        }
        return resultSum
    }
}