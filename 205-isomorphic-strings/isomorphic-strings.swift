class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {return false}
        var dict = [Character: Character]()

        for i in s.indices {
            if let value = dict[s[i]] {
                if value != t[i] {
                    return false
                }
            } else if dict.values.contains(t[i]) {
                return false 
            } else {
                dict[s[i]] = t[i]
            }
        }
        return true
    }
}