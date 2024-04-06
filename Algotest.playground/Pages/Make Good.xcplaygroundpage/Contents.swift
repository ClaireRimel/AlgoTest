
import Foundation

func makeGood(_ s: String) -> String {
    var stack: [Character] = []

    for char in s {
        // 1 - get the latest element of the array if possible
        if let last = stack.last,
           // 2 - Verify that there are both letters
            last.isLetter && char.isLetter
            // 3 - Check that there are different, it will allow us to get same lettre but with different category style (lowerCase/upperCase)
            && last != char
            // 4 - By apply to both letters lowercased method and checking that there are the same lettre will allow to remove the duplicate character
            && last.lowercased() == char.lowercased() {
            stack.removeLast()
        } else {
            stack.append(char)
        }
    }

    return String(stack)
}

makeGood("aBbAaC")
makeGood("WwnefffF")
makeGood("leEeetcode")
makeGood("s")
makeGood("Pp")
//: [Kth Missing Positive Number](Kth%20Missing%20Positive%20Number)
