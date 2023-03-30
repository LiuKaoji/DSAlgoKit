//
//  DSArray.swift
//  DSAlgoDS
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class DSArray {
    var array: [Int] = []

    // 添加元素到数组末尾
    func appendElement(element: Int) {
        array.append(element)
    }

    // 插入元素到指定位置
    func insertElement(at index: Int, element: Int) {
        array.insert(element, at: index)
    }

    // 删除指定位置的元素
    func removeElement(at index: Int) {
        array.remove(at: index)
    }

    // 获取指定位置的元素
    func getElement(at index: Int) -> Int? {
        return index < array.count ? array[index] : nil
    }

    // 打印数组内容
    func printArray() {
        print(array)
    }
}

