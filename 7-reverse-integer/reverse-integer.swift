class Solution {
    func reverse(_ x: Int) -> Int {
        var input = x
        var ans = 0
        while input != 0 { 
            let mod = input % 10
            ans = mod + (ans * 10)
            input /= 10
        }
        return ans < Int32.min || ans > Int32.max ? 0 : ans 
    }
}