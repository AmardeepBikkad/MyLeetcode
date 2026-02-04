class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var low = 0, high = 0, length = 0
        var dict = [Character: Int]()
        let str = Array(s)

        for i in high..<str.count {
            dict[str[high], default: 0] += 1
            var k = high - low + 1
            while dict.count < k {
                dict[str[low], default: 0] -= 1
                if dict[str[low]] == 0 {
                    dict.removeValue(forKey: str[low])
                }
                low += 1
                k = high - low + 1
            }
            if dict.count == k {
                length = max(k, length)
            }
            high += 1
        }
        return length
    }
}