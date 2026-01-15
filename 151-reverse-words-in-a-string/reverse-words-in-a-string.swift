class Solution {
    func reverseWords(_ s: String) -> String {
        var strArray = s.split(separator: " ")
        strArray = strArray.reversed()
        return strArray.joined(separator: " ")
    }
}