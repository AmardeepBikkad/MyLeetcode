class Solution {
    func longestNiceSubarray(_ nums: [Int]) -> Int {
        var low = 0, high = 1, length = 0
        var mask = nums[0]
        if nums.count == 1 {return 1}
        for i in high..<nums.count {
            while (mask & nums[i]) != 0 {
                mask -= nums[low]
                low += 1
            }
            mask += nums[high] 
            length = max(length, i - low + 1)
            high += 1
        }
        return length
    }
}