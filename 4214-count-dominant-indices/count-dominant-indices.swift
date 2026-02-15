class Solution {
    func dominantIndices(_ nums: [Int]) -> Int {
        var cnt = 0, sum = 0
        for index in stride(from: nums.count - 1, through: 1, by: -1) {
            sum += nums[index]
            print(index)
            if nums[index - 1] > (sum / (nums.count - index)) {
                cnt += 1
            }
        }
        return cnt
    }
}