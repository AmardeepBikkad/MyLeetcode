class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var current = 0
        for i in 0..<nums.count {
            if nums[i] == nums[current] {
                continue
            } else {
                current += 1
                nums[current] = nums[i]
            }
        }
        return current + 1
        

    }
}