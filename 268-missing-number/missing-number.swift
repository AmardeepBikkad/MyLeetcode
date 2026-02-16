class Solution {
    func missingNumber(_ nums: [Int]) -> Int {
        let sortNums = nums.sorted()
        var result = 0
        for i in 0..<sortNums.count {
            if sortNums[i] != i+1 {
                result = i+1
            } 
        }
        return result
    }
}