class Solution {
    func isHappy(_ n: Int) -> Bool {
        var slow = n, fast = n
        while fast != 1 {
            slow = getSum(slow)
            fast = getSum(fast)
            fast = getSum(fast)
            print(slow)
            print(fast)
            if (slow == fast && slow != 1) {
                return false 
            }
        }
        return true
    }

    func getSum(_ n: Int) -> Int {
        var sum = 0, num = n
        while num > 0 {
            let d = num % 10
            num = num / 10
            sum += d * d 
        }
        return sum
    }
}