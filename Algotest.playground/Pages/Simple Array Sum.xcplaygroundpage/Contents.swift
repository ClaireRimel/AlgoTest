

import Foundation

func simpleArraySum(ar: [Int]) -> Int {
    return ar.reduce(0) { partialResult, next in
        partialResult + next
    }
}

simpleArraySum(ar: [1, 2, 3]) // 6
simpleArraySum(ar: [5, 342, 3]) // 350
simpleArraySum(ar: [1, 9, 7, 3, 0, 6]) // 26
