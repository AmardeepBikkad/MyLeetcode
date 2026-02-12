class Solution {
    func romanToInt(_ s: String) -> Int {
        //"LVIII", "MCMXCIV"
        var dict:[Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
        var result = 0, prev = 0
        for char in s {
            let val = dict[char] ?? 0
            if val <= prev {
                result += prev
            } else {
                result += -prev
            }
            prev = val
        }
        result += prev
        return result
    }
}