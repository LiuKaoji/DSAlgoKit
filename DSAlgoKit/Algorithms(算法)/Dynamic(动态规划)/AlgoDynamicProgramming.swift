//
//  AlgoDynamicProgramming.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

//动态规划（Dynamic Programming，简称DP）是一种解决复杂问题的方法，
//它将问题分解为子问题，
//并将子问题的解存储在一个表格中，
//以便在需要时查找。动态规划通常用于解决具有重叠子问题和最优子结构特征的问题。

import Foundation

class AlgoDynamicProgramming {
    func maxSubarraySum(_ array: [Int]) -> Int {
        guard !array.isEmpty else {
            return 0
        }

        var maxSum = array[0]
        var currentSum = array[0]

        for i in 1..<array.count {
            currentSum = max(array[i], currentSum + array[i])
            maxSum = max(maxSum, currentSum)
        }

        return maxSum
    }
}

