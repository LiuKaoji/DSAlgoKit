//
//  DStack.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class DSStack<T> {
    private var elements: [T] = []

    // 入栈
    func push(_ element: T) {
        elements.append(element)
    }

    // 出栈
    func pop() -> T? {
        return elements.popLast()
    }

    // 查看栈顶元素
    func peek() -> T? {
        return elements.last
    }

    // 检查栈是否为空
    func isEmpty() -> Bool {
        return elements.isEmpty
    }

    // 获取栈中元素数量
    func count() -> Int {
        return elements.count
    }

    // 打印栈内容
    func printStack() {
        for element in elements.reversed() {
            print(element)
        }
    }
}

