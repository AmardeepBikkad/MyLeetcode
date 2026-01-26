class Solution {
    func rotateString(_ s: String, _ goal: String) -> Bool {
        var res = s + s

        if s.count != goal.count { return false }

        if res.contains(goal) {
            return true
        } else {
            return false
        }
    }
}