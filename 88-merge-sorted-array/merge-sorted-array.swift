class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var result = [Int]()
        var i = 0, j = 0
        while (i < m && j < n) {
            if nums1[i] < nums2[j] {
                result.append(nums1[i])
                i+=1
            } else if nums1[i] > nums2[j] {
                result.append(nums2[j])
                j+=1
            } else {
                result.append(nums1[i])
                result.append(nums2[j])
                i+=1
                j+=1
            }
        }

        while i < m {
            result.append(nums1[i])
            i+=1
        }

        while j < n {
            result.append(nums2[j])
            j+=1
        }
        nums1.removeAll()
        nums1 += result
    }
}