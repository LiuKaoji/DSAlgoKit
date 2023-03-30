//
//  AlgoCountingSort.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoCountingSort {
    func countingSort(_ array: inout [Int]) {
        guard let maxElement = array.max() else { return }
        guard let minElement = array.min() else { return }

        let range = maxElement - minElement + 1
        var countArray = [Int](repeating: 0, count: range)
        var outputArray = [Int](repeating: 0, count: array.count)

        for num in array {
            countArray[num - minElement] += 1
        }

        for i in 1..<countArray.count {
            countArray[i] += countArray[i - 1]
        }

        for i in (0..<array.count).reversed() {
            outputArray[countArray[array[i] - minElement] - 1] = array[i]
            countArray[array[i] - minElement] -= 1
        }

        array = outputArray
    }
}

