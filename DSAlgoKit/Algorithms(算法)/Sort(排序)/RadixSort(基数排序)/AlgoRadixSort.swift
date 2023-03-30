//
//  AlgoRadixSort.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoRadixSort {
    func radixSort(_ array: inout [Int]) {
        let maxNumber = array.max() ?? 0
        var exp = 1
        
        while maxNumber / exp > 0 {
            countingSort(&array, exp: exp)
            exp *= 10
        }
    }

    private func countingSort(_ array: inout [Int], exp: Int) {
        let n = array.count
        var output = [Int](repeating: 0, count: n)
        var count = [Int](repeating: 0, count: 10)

        for i in 0..<n {
            let index = (array[i] / exp) % 10
            count[index] += 1
        }

        for i in 1..<10 {
            count[i] += count[i - 1]
        }

        for i in (0..<n).reversed() {
            let index = (array[i] / exp) % 10
            output[count[index] - 1] = array[i]
            count[index] -= 1
        }

        for i in 0..<n {
            array[i] = output[i]
        }
    }
}

