/**
 Author: Eric Valle
 File: Valid Anagram
 Description:
    LeetCode Problem 242 - https://leetcode.com/problems/valid-anagram/description/
    Given two strings s and t, return true if t is an anagram of s, and false otherwise.
 **/
//TEST DATA
var s = "anagram", t = "nagaram"

//BRUTE FORCE
//func isAnagram(_ s: String, _ t: String) -> Bool {
//    //Variables
//    var isAnagram: Bool = false
//    
//    //Sort the arrays; if arrays match then return true
//    isAnagram = Array(s).sorted() == Array(t).sorted()
//    
//    return isAnagram
//}

//DICTIONARY
//Keep track of letter frequency
func isAnagram(_ s: String, _ t: String) -> Bool {
    //String matching length conditional
    if s.count != t.count {
        return false
    }

    //Variable count of type dictionary
    var count: [Character: Int] = [:]
    
    //Store letter frequency in dictionary
    for char in s {
        count[char, default: 0] += 1
    }

    //Remove letters from t string, result should be an empty t string
    for char in t {
        if let current = count[char] {
            if current == 1 {
                count.removeValue(forKey: char)
            } else {
                count[char] = current - 1
            }
        } else {
            return false
        }
    }

    return count.isEmpty
}


isAnagram(s, t)

//TEST DATA
s = "rat"; t = "car"

isAnagram(s, t)
