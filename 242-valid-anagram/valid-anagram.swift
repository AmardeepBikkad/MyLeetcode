class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var dict = [Character: Int]()
        if s.count != t.count { return false }

        for each in s {
            dict[each, default: 0] += 1
        }

        for each in t {
            dict[each, default: 0] -= 1

            if (dict[each] ?? 0) < 0 {
                return false
            }
        }

        // for (key, value) in dict {
        //     return value != 0 ? false : true
        // }
        return true 
    }
}