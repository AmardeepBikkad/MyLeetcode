class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        //let sortedNums = nums.sorted()
        var dict = [Int: Int]()
        for each in nums {
            // if sortedNums[i] == sortedNums[i + 1] {
            //     return sortedNums[i]
            // }
            dict[each, default: 0] += 1
            if dict[each] ?? 0 > 1 {
                return each
            }
        }
        return 0
    }
}