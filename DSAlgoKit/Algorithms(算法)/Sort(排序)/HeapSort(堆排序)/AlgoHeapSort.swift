//
//  AlgoHeapSort.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoHeapSort {
    func heapSort(_ array: inout [Int]) {
        let n = array.count

        for i in stride(from: n / 2 - 1, through: 0, by: -1) {
            heapify(&array, n, i)
        }

        for i in stride(from: n - 1, through: 0, by: -1) {
            array.swapAt(0, i)
            heapify(&array, i, 0)
        }
    }

    private func heapify(_ array: inout [Int], _ n: Int, _ i: Int) {
        var largest = i
        let left = 2 * i + 1
        let right = 2 * i + 2

        if left < n && array[left] > array[largest] {
            largest = left
        }

        if right < n && array[right] > array[largest] {
            largest = right
        }

        if largest != i {
            array.swapAt(i, largest)
            heapify(&array, n, largest)
        }
    }
}

