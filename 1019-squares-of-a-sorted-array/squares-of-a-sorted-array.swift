class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var result = nums
        // for each in nums {
        //     result.append(each*each)
        // }
        //return result.sorted()


        //this solution contains two steps 
        //1. making sqaure and adding to result array
        //2. doing sorting of result array
        // nlogn time complexity


        //another solution with O(n) time complexity
        // var arrayP = [Int]()
        // var arrayN = [Int]()
        // for each in nums {
        //     if each < 0 {
        //         arrayN.append(each)
        //     } else {
        //         arrayP.append(each)
        //     }
        // }
        // //only positive elements
        // if arrayN.count == 0 {
        //     for i in 0..<arrayP.count {
        //         arrayP[i] = arrayP[i] * arrayP[i]
        //     }
        //     return arrayP
        // }
        // //only negative elements
        // if arrayP.count == 0 {
        //     for i in 0..<arrayN.count {
        //         arrayN[i] = arrayN[i] * arrayN[i]
        //     }
        //     return arrayN.reversed()
        // }
        

        // //-ve and +ve elements
        // var i = 0, j = 0, id = 0
        // for i in 0..<arrayP.count {
        //     arrayP[i] = arrayP[i] * arrayP[i]
        // }
        // for i in 0..<arrayN.count {
        //     arrayN[i] = arrayN[i] * arrayN[i]
        // }
        // arrayN.reversed()

        // while (i < arrayN.count && j < arrayP.count) {
        //     if (arrayN[i] <= arrayP[j]) {
        //         result.append(arrayN[i])
        //         id+=1
        //         i+=1
        //     } else {
        //         result.append(arrayP[j])
        //         id+=1
        //         j+=1
        //     }
        // }

        // while j < arrayP.count {
        //     result.append(arrayP[j])
        //     id+=1
        //     j+=1
        // }

        // while i < arrayN.count {
        //     result.append(arrayN[i])
        //     id+=1
        //     i+=1
        // }
        // return result

        var right = nums.count - 1
        var left = 0
        var index = right
        while index >= 0 {
            if abs(nums[left]) < abs(nums[right]) {
                result[index] = nums[right] * nums[right]
                right -= 1
            } else {
                result[index] = nums[left] * nums[left]
                left += 1
            }
            index -= 1
        }
        return result
    }
}