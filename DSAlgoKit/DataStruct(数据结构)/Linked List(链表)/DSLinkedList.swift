//
//  DSLinkedList.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class Node<T> {
    var value: T
    var next: Node<T>?

    init(value: T) {
        self.value = value
    }
}

class DSLinkedList<T> {
    private var head: Node<T>?

    // 在链表末尾添加元素
    func append(value: T) {
        let newNode = Node(value: value)

        guard let head = head else {
            self.head = newNode
            return
        }

        var current = head
        while current.next != nil {
            current = current.next!
        }
        current.next = newNode
    }

    // 在指定位置插入元素
    func insert(value: T, at index: Int) {
        let newNode = Node(value: value)

        if index == 0 {
            newNode.next = head
            head = newNode
            return
        }

        var current = head
        var previous: Node<T>?
        var currentIndex = 0

        while current != nil && currentIndex < index {
            previous = current
            current = current?.next
            currentIndex += 1
        }

        newNode.next = previous?.next
        previous?.next = newNode
    }

    // 删除指定位置的元素
    func remove(at index: Int) {
        if index == 0 {
            head = head?.next
            return
        }

        var current = head
        var previous: Node<T>?
        var currentIndex = 0

        while current != nil && currentIndex < index {
            previous = current
            current = current?.next
            currentIndex += 1
        }

        previous?.next = current?.next
    }

    // 获取指定位置的元素
    func getElement(at index: Int) -> T? {
        var current = head
        var currentIndex = 0

        while current != nil && currentIndex < index {
            current = current?.next
            currentIndex += 1
        }

        return current?.value
    }

    // 打印链表内容
    func printList() {
        var current = head
        while current != nil {
            print("\(current!.value) -> ", terminator: "")
            current = current?.next
        }
        print("nil")
    }
}

