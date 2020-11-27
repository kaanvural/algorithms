//
//  two-number-sum.swift
//  algorithms
//
//  Created by Kaan Vural on 28.11.2020.
//

import Foundation

// MARK: Problem
// Write a function that takes in a non-empty array of distinct integers and an integer representing a target sum. If any two numbers in the input array sum up to the target sum, the function should return them in an array, in any order. If no two numbers sum up to the target sum, the function should return an empty array. Note that the target sum has to be obtained by summing two different integers in the array; you can't add a single integer to itself in order to obtain the target sum. You can assume that there will be at most one pair of numbers summing up to the target sum.

// MARK: Solution 1 - O(n^2) time | O(1) space

class twoNumberSum1 {
  func twoNumberSum1(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    for i in 0 ..< array.count - 1 {
        let firstNumber = array[i]
        
        for j in 0 ..< array.count - 1 {
            let secondNumber = array[j]
            
            if firstNumber + secondNumber == targetSum {
                return [firstNumber, secondNumber]
            }
        }
    }
    
    return []
  }
}


// MARK: Solution 2 - O(n) time | O(n) space

class twoNumberSum2 {
  func twoNumberSum2(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    var numbersHashMap = [Int: Bool]()
    
    for number in array {
        let potentialMatch = targetSum - number
        
        if let exists = numversHashMap[potentialMatch], exists {
            return [potentialMatch, number]
        } else {
            numbersHashMap[number] = true
        }
    }
    
    return []
  }
}


// MARK: Solution 3 - O(nlog(n)) time | O(1) space


class twoNumberSum3 {
  func twoNumberSum3(_ array: inout [Int], _ targetSum: Int) -> [Int] {
    array.sort()
    
    var leftPointer = 0
    var rightPointer = array.count - 1
    
    while leftPointer < rightPointer {
        let leftMost = array[leftPointer]
        let rightMost = array[rightPointer]
        
        let currentSum = leftMost + rightMost
        
        if currentSum == targetSum {
            return [leftMost, rightMost]
        } else if currentSum < targetSum {
            leftPointer = leftPointer + 1
        } else if currentSum > targetSum {
            rightPointer = rightPointer - 1
        }
    }
    
    return []
  }
}
