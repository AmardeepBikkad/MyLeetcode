class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (i, num) in nums.enumerated() {
            if let foundedNumber = dict[target - num] { 
                return [foundedNumber, i] 
            }
            dict[num] = i
        }

        return []
    }
}