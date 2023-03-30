//
//  AlgoQuickSort.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoQuickSort {
    func quickSort<T: Comparable>(_ array: inout [T], low: Int, high: Int) {
        if low < high {
            let pivotIndex = partition(&array, low: low, high: high)
            quickSort(&array, low: low, high: pivotIndex - 1)
            quickSort(&array, low: pivotIndex + 1, high: high)
        }
    }

    private func partition<T: Comparable>(_ array: inout [T], low: Int, high: Int) -> Int {
        let pivot = array[high]
        var i = low - 1

        for j in low..<high {
            if array[j] <= pivot {
                i += 1
                array.swapAt(i, j)
            }
        }
        array.swapAt(i + 1, high)
        return i + 1
    }
}

