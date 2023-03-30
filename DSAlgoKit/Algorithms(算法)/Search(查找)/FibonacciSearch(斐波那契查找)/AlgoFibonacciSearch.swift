//
//  AlgoFibonacciSearch.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoFibonacciSearch {
    func fibonacciSearch(_ array: [Int], target: Int) -> Int? {
        var fibM2 = 0
        var fibM1 = 1
        var fibM = fibM2 + fibM1

        while fibM < array.count {
            fibM2 = fibM1
            fibM1 = fibM
            fibM = fibM2 + fibM1
        }

        var offset = -1
        while fibM > 1 {
            let i = min(offset + fibM2, array.count - 1)
            if array[i] < target {
                fibM = fibM1
                fibM1 = fibM2
                fibM2 = fibM - fibM1
                offset = i
            } else if array[i] > target {
                fibM = fibM2
                fibM1 = fibM1 - fibM2
                fibM2 = fibM - fibM1
            } else {
                return i
            }
        }

        if fibM1 == 1 && array[offset + 1] == target {
            return offset + 1
        }
        return nil
    }
}

