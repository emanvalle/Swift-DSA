///* Final Submission:
 
 class Solution {
     func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
         var emptyDict: [Int: Int] = [:]
     
         for i in 0..<nums.count {
             var complement = target - nums[i]
             if emptyDict[nums[i]] != nil {
                 return [emptyDict[nums[i]]!, i]
             } else {
                 emptyDict[complement] = i
             }
             
         }
         return[]
         }
 }
 
//*/


//BRUTE FORCE

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    for i in 0..<nums.count {
//        for j in i+1..<nums.count {
//            if nums[i] + nums[j] == target {
//                return [i, j]
//            }
//        }
//    }
//    return[]
//}
//
//var  nums = [2,7,11,15], target = 9
//
//twoSum(nums, target)
//
//nums = [3,2,4]; target = 6
//
//twoSum(nums, target)


//DICTIONARY
//For each value, nums[i], see if the compliment is stored in dictionary
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    //Initialize Dictionary
    var emptyDict: [Int: Int] = [:]
    
    
    //Iterate through the list
    for i in 0..<nums.count {
        
        print("\nnums[i]: ", nums[i])
        //Find Compliment
        var complement = target - nums[i]
        print("Complement: ", complement)
        
        //Check dictionary for complement
        if emptyDict[nums[i]] != nil {
            return [emptyDict[nums[i]]!, i]
        } else {
            emptyDict[complement] = i
            print("emptyDict[complement] - Index: ", emptyDict[complement]!)
            print("Dictionary:")
            print(emptyDict)
        }
        
    }
    return[-1, -1]
}

var  nums = [2,7,11,15], target = 9

twoSum(nums, target)

nums = [3,2,4]; target = 6

twoSum(nums, target)
