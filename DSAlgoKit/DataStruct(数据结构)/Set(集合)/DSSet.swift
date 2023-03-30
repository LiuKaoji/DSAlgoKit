//
//  DSSet.swift
//  DSAlgoDS
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class DSSet {
    var set: Set<Int> = []

    // 向集合中添加元素
    func addElement(element: Int) {
        set.insert(element)
    }

    // 从集合中删除元素
    func removeElement(element: Int) {
        set.remove(element)
    }

    // 检查集合中是否包含某个元素
    func containsElement(element: Int) -> Bool {
        return set.contains(element)
    }

    // 打印集合内容
    func printSet() {
        print(set)
    }
}

