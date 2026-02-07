class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var low = 0, length = 0
        var zeroCount = 0
        for high in 0..<nums.count {
            if nums[high] == 0 {
                zeroCount += 1
            }
            while zeroCount > k {
                if nums[low] == 0 {
                    zeroCount -= 1
                }
                low += 1
            }

            length = max(high - low + 1, length)
        }
        return length
    }
}