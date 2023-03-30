//
//  AlgoBubbleSort.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoBubbleSort {
    func bubbleSort(_ array: inout [Int]) {
        for i in 0..<array.count {
            for j in 0..<(array.count - i - 1) {
                if array[j] > array[j + 1] {
                    array.swapAt(j, j + 1)
                }
            }
        }
    }
}
