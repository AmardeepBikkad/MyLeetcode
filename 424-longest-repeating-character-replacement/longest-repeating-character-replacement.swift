class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var low = 0, high = 0, length = 0
    var arr = Array(repeating: 0, count: 256)
    let str = Array(s.utf8)
    for i in high..<str.count {
        arr[Int(str[high])] += 1
        var len = high - low + 1
        var maxCount = arr.max()!
        var diff = len - maxCount
        
        while diff > k {
            arr[Int(str[low])] -= 1
            low += 1
            len = high - low + 1
            maxCount = arr.max()!
            diff = len - maxCount
        }
        length = max(len, length)
        high += 1
    }
    return length
    }
}