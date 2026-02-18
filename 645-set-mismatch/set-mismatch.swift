class Solution {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var dict = [Int: Int]()
        var result = [Int]()
        for each in nums {
            dict[each, default: 0] += 1
            if dict[each, default: 0] == 2 {
                result.append(each)
            }
        }
        for i in 1...nums.count {
            if dict[i, default: 0] == 0 {
                result.append(i)
            }
        }
        return result
    }
}