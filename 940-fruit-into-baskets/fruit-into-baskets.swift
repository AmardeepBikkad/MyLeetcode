class Solution {
    func totalFruit(_ fruits: [Int]) -> Int {
        var low = 0, high = 0
        var result = 0
        var dict: [Int: Int] = [:]
        let k = 2
        for i in high..<fruits.count {
            dict[fruits[high], default: 0] += 1
            while dict.count > k {
                dict[fruits[low]]! -= 1
                if dict[fruits[low]] == 0 {
                    dict.removeValue(forKey: fruits[low])
                }
                low += 1
            }
            if dict.count <= k {
                let len = high - low + 1
                result = max(len, result)
            }
            high += 1
        }
        return result
    }
}