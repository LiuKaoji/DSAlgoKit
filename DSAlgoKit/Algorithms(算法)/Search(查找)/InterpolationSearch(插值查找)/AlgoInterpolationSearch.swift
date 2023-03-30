//
//  AlgoInterpolationSearch.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoInterpolationSearch {
    func interpolationSearch(_ array: [Int], target: Int) -> Int? {
        var low = 0
        var high = array.count - 1

        while low <= high && target >= array[low] && target <= array[high] {
            let pos = low + ((target - array[low]) * (high - low)) / (array[high] - array[low])

            if array[pos] == target {
                return pos
            } else if array[pos] < target {
                low = pos + 1
            } else {
                high = pos - 1
            }
        }
        return nil
    }
}
