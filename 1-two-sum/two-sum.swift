class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        //substract current number in array from target -> if we found substraction == number added in dictionary -> simply return index of them
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