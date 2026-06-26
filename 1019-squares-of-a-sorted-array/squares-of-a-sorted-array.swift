class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        for each in nums {
            result.append(each*each)
        }
        return result.sorted()
    }
}