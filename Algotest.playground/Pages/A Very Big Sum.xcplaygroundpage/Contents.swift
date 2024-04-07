/*: I apply the same approach as in the Simple Array Sum Problem because utilising the `.reduce()` function results in 𝘖(𝓃)) complexity. This means that the time required to execute the algorithm grows linearly with the size of the input, making such algorithms suitable for handling large inputs effectively up to a certain point.
*/

func aVeryBigSum(ar: [Int]) -> Int {
    return ar.reduce(0) { partialResult, next in
        partialResult + next
    }
}

aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]) // 5000000015
