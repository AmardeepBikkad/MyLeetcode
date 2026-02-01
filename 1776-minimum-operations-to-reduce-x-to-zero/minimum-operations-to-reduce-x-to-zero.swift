class Solution {
    func minOperations(_ nums: [Int], _ x: Int) -> Int {
        var low = 0, high = 0, sum = 0
        var length = -1
        let total = nums.reduce(0, +)

        if total < x { return -1 }
        if total == x { return nums.count }
        let target = total - x

        while high < nums.count {
            sum = sum + nums[high]
            high += 1
            while sum > target {
                sum -= nums[low]
                low += 1 
            }
            if sum == target {
                let len = nums.count - (high - low)
                if length == -1 {
                    length = len
                } else {
                    length = min(length, len)
                }
                
            }
        }

        return length
    }
}