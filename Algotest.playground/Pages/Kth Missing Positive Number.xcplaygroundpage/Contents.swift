/*:
 ### Task
 
 Given an array `arr` of positive integers sorted in a strictly increasing order, and an integer `k`.

 Return the `kth` positive integer that is missing from this array.
 */

import Foundation

/// Finds the k-th missing positive integer from a sorted array.
///
/// The function uses a binary search approach to determine the position
/// in the sorted array where the k-th missing number should be.
///
/// - Parameters:
///   - arr: A sorted array of positive integers.
///   - k: The k-th missing number to find.
/// - Returns: The k-th missing positive integer.
func findKthPositive(arr: [Int], k: Int) -> Int {
    // Initialize binary search bounds
    var left = 0
    var right = arr.count
    
    // Perform binary search
    while left < right {
        let mid = left + (right - left) / 2
        
        // Calculate the number of missing numbers up to and including the position `mid`
        // Missing count is computed as the difference between the number at `mid`
        // and the maximum number that could have been there if there were no gaps, minus one.
        // This maximum number is `(mid + 1)` because indices start at 0.
        let missingCount = arr[mid] - (mid + 1)
        
        // If the missing count is less than k, it means we haven't found enough missing numbers,
        // so we need to search in the right half of the array.
        if missingCount < k {
            left = mid + 1
        } else {
            // Otherwise, there are at least k missing numbers before index `mid`,
            // so we continue searching in the left half.
            right = mid
        }
    }
    // Once the binary search is complete, `left` will be at the smallest index where
    // the number of missing integers is at least k. The `left` value represents the number
    // of non-missing numbers that should have appeared before the k-th missing number.
    // Adding `k` gives the actual k-th missing number.
    return left + k
}


findKthPositive(arr: [1,2,3,4],
                k: 2) // 6
findKthPositive(arr: [2,3,4,7,11],
                k: 5) // 9
findKthPositive(arr: [2],
                k: 1) // 1
findKthPositive(arr: [7,17,22,26,34],
                k: 9) //10
