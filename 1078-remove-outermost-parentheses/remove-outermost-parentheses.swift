class Solution {
    func removeOuterParentheses(_ s: String) -> String {
        var counter = 0
        var resString = ""

        for char in s {
            if char == "(" {
                counter += 1
                if counter > 1 {
                    resString += "("
                }
            } else {
                counter -= 1
                if counter > 0 {
                    resString += ")"
                }
            }
        }
        return resString
    }
}