class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        var chars = Array(s)
        var end = chars.count - 1
        
        while (end >= 0 && chars[end] == " ") {
            end -= 1
        } 

        var start = end
        while start >= 0 && chars[start] != " " {
            start -= 1
        } 

        return end - start
    }
}