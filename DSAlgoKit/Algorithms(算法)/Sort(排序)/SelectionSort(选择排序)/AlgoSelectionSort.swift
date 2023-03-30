//
//  AlgoSelectionSort.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoSelectionSort {
    func selectionSort(_ array: inout [Int]) {
        for i in 0..<array.count {
            var minIndex = i
            for j in (i + 1)..<array.count {
                if array[j] < array[minIndex] {
                    minIndex = j
                }
            }
            if minIndex != i {
                array.swapAt(i, minIndex)
            }
        }
    }
}

