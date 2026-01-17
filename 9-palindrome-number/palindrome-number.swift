class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var num = x
        var reverseNum = 0
        while num != 0 {
            reverseNum = (num % 10) + (reverseNum * 10)
            num /= 10
        }

        return x < 0 ? false : (x == reverseNum)
    }
}