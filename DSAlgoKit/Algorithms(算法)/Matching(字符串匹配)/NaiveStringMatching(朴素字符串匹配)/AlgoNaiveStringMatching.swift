//
//  AlgoNaiveStringMatching.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoNaiveStringMatching {
    func naiveSearch(text: String, pattern: String) -> [Int] {
        let textChars = Array(text)
        let patternChars = Array(pattern)
        var indices: [Int] = []

        for i in 0...(textChars.count - patternChars.count) {
            var match = true
            for j in 0..<patternChars.count {
                if textChars[i + j] != patternChars[j] {
                    match = false
                    break
                }
            }
            if match {
                indices.append(i)
            }
        }
        return indices
    }
}

