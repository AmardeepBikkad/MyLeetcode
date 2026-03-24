class Solution {
    func maxProduct(_ nums: [Int]) -> Int {
        var ans = nums[0], maxEnding = nums[0], minEnding = nums[0]
        for i in 1..<nums.count {
            let v1 = nums[i]
            let v2 = minEnding * nums[i]
            let v3 = maxEnding * nums[i]
            maxEnding = max(v1, max(v2,v3))
            minEnding = min(v1,min(v2, v3))
            ans = max(ans, max(maxEnding, minEnding))
        }
        return ans
    }
}