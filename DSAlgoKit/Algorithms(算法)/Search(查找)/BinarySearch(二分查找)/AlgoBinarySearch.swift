//
//  AlgoBinarySearch.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoBinarySearch {
    func binarySearch<T: Comparable>(_ array: [T], target: T) -> Int? {
        var low = 0
        var high = array.count - 1

        while low <= high {
            let mid = (low + high) / 2
            if array[mid] == target {
                return mid
            } else if array[mid] < target {
                low = mid + 1
            } else {
                high = mid - 1
            }
        }
        return nil
    }
}

