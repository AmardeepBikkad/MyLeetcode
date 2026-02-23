class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        var low = 0, high = 0
        let stack = Array(haystack)
        let need = Array(needle)
        while low < haystack.count {
            if need[high] == stack[low] {
                low += 1
                high += 1
                if high == needle.count {
                    return low - needle.count
                }
            } else {
                low = low - high + 1
                high = 0
            }
        }
        return -1
    }
}