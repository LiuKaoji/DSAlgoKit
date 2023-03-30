//
//  AlgoBucketSort.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoBucketSort {
    func bucketSort(_ array: [Double]) -> [Double] {
        let n = array.count
        var buckets = Array(repeating: [Double](), count: n)

        for value in array {
            let index = Int(Double(n) * value)
            buckets[index].append(value)
        }

        for i in 0..<n {
            buckets[i].sort()
        }

        return buckets.flatMap { $0 }
    }
}

