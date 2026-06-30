class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result = nums
        // for each in nums {
        //     result.append(each*each)
        // }
        //return result.sorted()
        var right = nums.count - 1
        var left = 0
        var index = right
        while index >= 0 {
            if abs(nums[left]) < abs(nums[right]) {
                result[index] = nums[right] * nums[right]
                right -= 1
            } else {
                result[index] = nums[left] * nums[left]
                left += 1
            }
            index -= 1
        }
        return result
    }
}