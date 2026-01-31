class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var low = 0
        var high = 0
        var sum = 0
        var result = Int.max


        while high < nums.count  {
            sum += nums[high]

            while sum >= target {
                let length = high - low + 1
                result = min(result, length)
                sum -= nums[low]
                low += 1
            }
            high += 1
        }
        return result == Int.max ? 0 : result
    }
}