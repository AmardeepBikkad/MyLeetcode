class Solution {
    func largestOddNumber(_ num: String) -> String {
        var nums = num
        // var largest = ""
        // var inc = nums.count - 1 

        for each in nums.reversed() {
            if let number = Int(String(each)), number % 2 == 1 {
                return nums
            } else {
                nums.removeLast()
            }
        } 
        return ""
    }
}