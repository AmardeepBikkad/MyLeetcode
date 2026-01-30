class Solution {
    func sortColors(_ nums: inout [Int]) {
        var low = 0
        var mid = 0
        var high = nums.count - 1

        while mid <= high {
            if nums[mid] == 0 {
                //swap(low, mid) 
                let temp = nums[low]
                nums[low] = nums[mid]
                nums[mid] = temp
                low += 1
                mid += 1
            } else if nums[mid] == 1 {
                mid += 1
            } else {
                //swap(mid, high) 
                let temp = nums[mid]
                nums[mid] = nums[high]
                nums[high] = temp
                high -= 1
            }
        }
    }
}