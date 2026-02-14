class Solution {
    func minimumCardPickup(_ cards: [Int]) -> Int {
        var dict = [Int: Int]()
        var low = 0, high = 0, result = Int.max
    
        for i in high..<cards.count {
            dict[cards[high], default: 0] += 1

            while dict[cards[high]] ?? 0 > 1 {
                result = min(result, high - low + 1)
                dict[cards[low], default: 0] -= 1
                low += 1
            }
            high += 1
        }
        return result == Int.max ? -1 : result
    }
}