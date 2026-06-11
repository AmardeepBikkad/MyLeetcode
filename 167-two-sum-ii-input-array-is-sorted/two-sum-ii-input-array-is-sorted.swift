class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var first = 0, last = numbers.count - 1
        while first < last {
            var sum = numbers[first] + numbers[last]
            if sum == target {
                return [first+1, last+1]
            }
            if sum > target {
                last -= 1
            } else if sum < target {
                first += 1
            }
            
        }
        return [first, last]
    }
}