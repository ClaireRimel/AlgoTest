
import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var result = [0, 0]
    
    for i in 0...2 {
        if a[i] > b[i] {
            result[0] += 1
        } else if b[i] > a[i] {
            result[1] += 1
        } 
    }
    
    return result
}

compareTriplets(a: [1,2,3], b: [3,4,5]) // [0,3]
compareTriplets(a: [5,6,7], b: [3,4,5]) // [3,0]
compareTriplets(a: [1,1,1], b: [1,1,1]) // [0,0]
compareTriplets(a: [5,6,5], b: [3,7,5]) // [1,1]

