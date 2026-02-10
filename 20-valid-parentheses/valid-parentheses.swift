class Solution {
    func isValid(_ s: String) -> Bool {
        let str = Array(s)
        var stackArray = [Character]()
        for each in str {
            if each == "(" || each == "[" || each == "{" {
                stackArray.append(each)
            } else {
                if stackArray.count == 0 {return false}
                let top = stackArray.last
                stackArray.removeLast()
                // Check for matching pair
                if ((each == ")" && top == "(") ||
                    (each == "]" && top == "[") ||
                    (each == "}" && top == "{")) {
                    continue
                } else {
                    return false
                }
            }
        }
        return stackArray.count == 0
    }
}