class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var counter = 0
        var maxi = 0
        for each in nums {
            if each == 1 {
                counter += 1
            } else {
                counter = 0
            }
            maxi = max(maxi, counter)
        }
        return maxi
    }
}