
import Foundation
import Contacts

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var solution = [0,0]
        var candidates = [Int:Int]()
        
        for (i,n) in nums.enumerated() {
            let pair = target - n
            if candidates[pair] != nil {
            solution = [candidates[pair]!,i]
            break
            } else {
                candidates[n] = i
            }
        }
        return solution
    }
}

func lengthOfLongestSubstring(_ s: String) -> Int {
    if s.isEmpty { return 0 }
    if s.count == 1 { return 1 }
    
    let s = Array(s)
    var longest = [Character]()
    var highest = 0
    
    for c in s {
        if longest.contains(c), let index = longest.firstIndex(of: c) {
            highest = max(highest, longest.count)
            longest.removeSubrange(0...index)
        }
        longest.append(c)
        highest = max(highest, longest.count)
    }
    return highest
}

lengthOfLongestSubstring("aab")


let date = "2020-01-29T14:20:05.000Z"

let formatter = ISO8601DateFormatter()
formatter.formatOptions = .withFullDate
formatter.date(from: date)

Int(4.25)

let aformatter = CNPostalAddressFormatter()
let x = CNMutablePostalAddress()
x.street = "29, Neumarkter Str."
x.city = "Munich"
aformatter.string(from: x)

enum Test {
    case a, b
}

extension Test {
    case c
}
