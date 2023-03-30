//
//  DSQueue.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class DSQueue<T> {
    private var elements: [T] = []

    // 入队
    func enqueue(_ element: T) {
        elements.append(element)
    }

    // 出队
    func dequeue() -> T? {
        return isEmpty() ? nil : elements.removeFirst()
    }

    // 查看队首元素
    func peek() -> T? {
        return elements.first
    }

    // 检查队列是否为空
    func isEmpty() -> Bool {
        return elements.isEmpty
    }

    // 获取队列中元素数量
    func count() -> Int {
        return elements.count
    }

    // 打印队列内容
    func printQueue() {
        for element in elements {
            print(element, terminator: " <- ")
        }
        print("end")
    }
}

