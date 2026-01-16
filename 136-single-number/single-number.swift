class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()

        for each in nums {
            if dict[each] == nil {
                dict[each, default: 0] = 1
            } else {
                dict[each] = (dict[each] ?? 0) + 1
            }
        }

        for each in nums {
            if dict[each] == 1 {
                return each
            }
        }
        return 0
    }
}