//
//  AlgoLinearSearch.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoLinearSearch {
    func linearSearch<T: Equatable>(_ array: [T], target: T) -> Int? {
        for (index, element) in array.enumerated() {
            if element == target {
                return index
            }
        }
        return nil
    }
}
