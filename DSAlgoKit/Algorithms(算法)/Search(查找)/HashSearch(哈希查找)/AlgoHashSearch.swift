//
//  AlgoHashSearch.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class HashTable<Key: Hashable, Value> {
    typealias Element = (key: Key, value: Value)
    private(set) var hashTable: [[Element]] = []
    private let defaultSize = 10

    init() {
        hashTable = Array(repeating: [], count: defaultSize)
    }

    private func hashIndex(forKey key: Key) -> Int {
        return abs(key.hashValue % hashTable.count)
    }

    func put(key: Key, value: Value) {
        let index = hashIndex(forKey: key)
        for (i, element) in hashTable[index].enumerated() {
            if element.key == key {
                hashTable[index][i].value = value
                return
            }
        }
        hashTable[index].append((key: key, value: value))
    }

    func get(key: Key) -> Value? {
        let index = hashIndex(forKey: key)
        for element in hashTable[index] {
            if element.key == key {
                return element.value
            }
        }
        return nil
    }

    func remove(key: Key) -> Value? {
        let index = hashIndex(forKey: key)
        for (i, element) in hashTable[index].enumerated() {
            if element.key == key {
                hashTable[index].remove(at: i)
                return element.value
            }
        }
        return nil
    }
}

