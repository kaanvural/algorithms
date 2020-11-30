//
//  validate-subsequence.swift
//  algorithms
//
//  Created by Kaan Vural on 30.11.2020.
//

import Foundation

// MARK: Problem
// Given two non-empty arrays of integers, write a function that determines vvhether the second array is a subsequence of the first one. A subsequence of an array is a set of numbers that aren't necessarily adjacent in the array but that are in the same order as they appear in the array. For instance, the numbers [l, 3, 4] form a subsequence of the array [l, 2, 3, 4] , and so do the numbers [2, 4] . Note that a single number in an array and the array itself are both valid subsequences of the array.

// MARK: Solution 1 - O(n) time | O(1) space

class validateSubsequence1 {
    func validateSubsequence1(_ array: [Int], _ sequence: [Int]) -> Bool {
        var arrIdx = 0
        var seqIdx = 0
        
        while arrIdx < array.count, seqIdx < sequence.count {
            if array[arrIdx] == sequence[seqIdx] {
                seqIdx += 1
            }
            arrIdx += 1
        }
        return seqIdx == sequence.count
    }
}

// MARK: Solution 2 - O(n) time | O(1) space

class validateSubsequence2 {
    func validateSubsequence2(_ array: [Int], _ sequence: [Int]) -> Bool {
        var seqIdx = 0
        
        for value in array {
            if seqIdx == sequence.count {
                break
            }
            
            if value == sequence[seqIdx] {
                seqIdx += 1
            }
        }
        
        return seqIdx == sequence.count
    }
}
