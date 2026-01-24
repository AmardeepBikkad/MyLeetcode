class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var neg = [Int]()
        var pos = [Int]()
        let s = nums.count - 1
        var res = [Int]()
        for each in nums {
            if each < 0 {
               neg.append(each)
            } else {
                pos.append(each)
            }
        }

        if neg.count == 0 { // all positive
            for i in 0..<pos.count {
                pos[i] = pos[i] * pos[i] 
            }
            return pos
        }

        if pos.count == 0 { // all negative
            for i in 0..<neg.count {
                neg[i] = neg[i] * neg[i] 
            }
            neg = neg.reversed()
            return neg
        }

        var i = 0
        var j = 0
        //sort negative elements first
        for i in 0..<neg.count {
            neg[i] = neg[i] * neg[i] 
        }
        neg = neg.reversed()
        for i in 0..<pos.count {
            pos[i] = pos[i] * pos[i] 
        }
        while (i < pos.count && j < neg.count) {
            if neg[j] <= pos[i] {
                res.append(neg[j])
                j += 1
            } else {
                res.append(pos[i])
                i += 1
            }
        }

        while i < pos.count {
            res.append(pos[i])
            i += 1
        }

        while j < neg.count {
            res.append(neg[j])
            j += 1
        }
        return res
    }
}