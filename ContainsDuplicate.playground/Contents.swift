/**
 Author: Eric Valle
 File: Contains Duplicate
 Description:
    LeetCode Problem 217 - https://leetcode.com/problems/contains-duplicate/description/
    Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 **/

//TEST DATA
var nums = [1,2,3,4]

/*Brute Force
//func containsDuplicate(_ nums: [Int]) -> Bool {
//    var isDuplicate = false
//    
//    //For loop to check each value
//    for i in 0..<nums.count{
//        //Secondary for loop to check the other values in array
//        for j in i+1..<nums.count{
//            //As soon as dupicate is found then return true
//            if nums[i] == nums[j] {
//                isDuplicate = true
//                return isDuplicate
//            }
//        }
//    }
//    
//    //Else return false
//   return isDuplicate
//}
//print(containsDuplicate(nums))
 */

//Using Sets
func containsDuplicate(_ nums: [Int]) -> Bool {
    var numsSeen = Set<Int>()
    var isDuplicate = false
    
    //For loop to check each value
    for num in nums{
        if numsSeen.contains(num){
            isDuplicate = true
            return isDuplicate
        }
        numsSeen.insert(num)
        
    }
    
    //Else return false
   return isDuplicate
}
print(containsDuplicate(nums))

