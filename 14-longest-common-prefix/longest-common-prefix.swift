class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var sortedStr = strs.sorted()
        var result = ""
        for (char1, char2) in zip(sortedStr.first!, sortedStr.last!) {
            if (char1 == char2) {
                result.append(char1)
            } else {
                break
            }
        }
        return result
    }
}