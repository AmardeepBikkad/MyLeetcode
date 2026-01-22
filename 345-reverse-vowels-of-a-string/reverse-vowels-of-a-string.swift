class Solution {
    func reverseVowels(_ s: String) -> String {
        var chars = Array(s)
        var srt = 0
        var end = chars.count - 1
        let newSet: Set<String> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

        while srt < end {
            if !newSet.contains(String(chars[srt])){
                srt += 1
            } else if !newSet.contains(String(chars[end])){
                end -= 1
            } else {
            let temp = chars[srt]
            chars[srt] = chars[end]
            chars[end] = temp
            srt += 1
            end -= 1
            }
        }
        return String(chars)
    }
}