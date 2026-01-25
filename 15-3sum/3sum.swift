class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {

        let array = nums.sorted()
        var result: [[Int]] = []
        for i in 0..<nums.count {
        if i > 0 && array[i] == array[i-1] { continue }
            let target = -array[i]
            var left = i + 1, right = array.count - 1
            while left < right {
                let sum = array[left] + array[right]
                if sum == target {
                    result.append([array[i], array[left], array[right]])
                    while (left < right && (array[left] == array[left + 1])) { 
                        left += 1 
                    }
                    while (left < right && (array[right] == array[right - 1])) { 
                        right -= 1 
                    }
                    left += 1
                    right -= 1
                } else if sum < target {
                    left += 1
                } else {
                    right -= 1
                }
            }
        }
        return result
    }
}