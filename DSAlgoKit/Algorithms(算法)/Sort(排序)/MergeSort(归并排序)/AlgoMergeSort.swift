//
//  AlgoMergeSort.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoMergeSort {
    func mergeSort(_ array: inout [Int]) {
        if array.count > 1 {
            let mid = array.count / 2
            var leftArray = Array(array[0..<mid])
            var rightArray = Array(array[mid..<array.count])

            mergeSort(&leftArray)
            mergeSort(&rightArray)

            var i = 0, j = 0, k = 0
            while i < leftArray.count && j < rightArray.count {
                if leftArray[i] < rightArray[j] {
                    array[k] = leftArray[i]
                    i += 1
                } else {
                    array[k] = rightArray[j]
                    j += 1
                }
                k += 1
            }

            while i < leftArray.count {
                array[k] = leftArray[i]
                i += 1
                k += 1
            }

            while j < rightArray.count {
                array[k] = rightArray[j]
                j += 1
                k += 1
            }
        }
    }
}

