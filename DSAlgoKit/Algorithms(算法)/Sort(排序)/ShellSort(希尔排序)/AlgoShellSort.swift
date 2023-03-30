//
//  AlgoShellSort.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoShellSort {
    func shellSort(_ array: inout [Int]) {
        var gap = array.count / 2
        while gap > 0 {
            for i in gap..<array.count {
                let temp = array[i]
                var j = i
                while j >= gap && array[j - gap] > temp {
                    array[j] = array[j - gap]
                    j -= gap
                }
                array[j] = temp
            }
            gap /= 2
        }
    }
}

