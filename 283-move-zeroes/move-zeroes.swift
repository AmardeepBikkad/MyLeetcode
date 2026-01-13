class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var s = 0
        var e = 1

        while s < e && e < nums.count {
            if nums[s] == 0 && nums[e] != 0 {
                let temp = nums[s]
                nums[s] = nums[e]
                nums[e] = temp
                s += 1
                e += 1
            } else if nums[s] == 0 && nums[e] == 0  {
                e += 1
            } else {
                s += 1
                e += 1
            }
        }
    }
}