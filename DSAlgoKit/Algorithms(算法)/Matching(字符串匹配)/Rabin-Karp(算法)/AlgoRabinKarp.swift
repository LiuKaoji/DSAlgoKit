//
//  AlgoRabinKarp.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoRabinKarp {
    private let prime: Int = 101

    func search(text: String, pattern: String) -> [Int] {
        let textChars = Array(text)
        let patternChars = Array(pattern)
        let patternLength = patternChars.count
        let textLength = textChars.count
        var patternHash = 0
        var textHash = 0
        var indices: [Int] = []

        for i in 0..<patternLength {
            patternHash = (patternHash + Int(patternChars[i].asciiValue!) * Int(pow(Double(prime), Double(i)))) % 256
            textHash = (textHash + Int(textChars[i].asciiValue!) * Int(pow(Double(prime), Double(i)))) % 256
        }

        for i in 0...(textLength - patternLength) {
            if patternHash == textHash {
                var match = true
                for j in 0..<patternLength {
                    if textChars[i + j] != patternChars[j] {
                        match = false
                        break
                    }
                }
                if match {
                    indices.append(i)
                }
            }
            if i < textLength - patternLength {
                textHash = (textHash - Int(textChars[i].asciiValue!)) / prime
                textHash += Int(textChars[i + patternLength].asciiValue!) * Int(pow(Double(prime), Double(patternLength - 1))) % 256
            }
        }
        return indices
    }
}

