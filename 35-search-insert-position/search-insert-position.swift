class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        if target > nums[nums.count-1] {
            return nums.count
        }
        for (index, element) in nums.enumerated() {
            if target <= element {
                return index
            } 
        }
        return -1 
    }
}