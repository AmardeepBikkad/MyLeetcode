class Solution {
    func finalString(_ s: String) -> String {
        var str = ""
        for char in s {
            if char == "i" {
                str = String(str.reversed())
                continue
            }
            str += String(char)
        }
        return str       
    }
}