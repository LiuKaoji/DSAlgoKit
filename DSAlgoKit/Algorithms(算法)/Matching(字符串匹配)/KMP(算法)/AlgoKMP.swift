//
//  AlgoKMP.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoKMP {
    func search(text: String, pattern: String) -> [Int] {
        let textChars = Array(text)
        let patternChars = Array(pattern)
        let textLength = textChars.count
        let patternLength = patternChars.count
        var indices: [Int] = []

        let lps = computeLPSArray(pattern: patternChars)

        var i = 0
        var j = 0

        while i < textLength {
            if patternChars[j] == textChars[i] {
                i += 1
                j += 1
            }

            if j == patternLength {
                indices.append(i - j)
                j = lps[j - 1]
            } else if i < textLength && patternChars[j] != textChars[i] {
                if j != 0 {
                    j = lps[j - 1]
                } else {
                    i += 1
                }
            }
        }
        return indices
    }

    private func computeLPSArray(pattern: [Character]) -> [Int] {
        var lps = Array(repeating: 0, count: pattern.count)
        var len = 0
        var i = 1

        while i < pattern.count {
            if pattern[i] == pattern[len] {
                len += 1
                lps[i] = len
                i += 1
            } else {
                if len != 0 {
                    len = lps[len - 1]
                } else {
                    lps[i] = 0
                    i += 1
                }
            }
        }
        return lps
    }
}
