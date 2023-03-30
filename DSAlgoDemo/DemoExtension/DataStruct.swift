//
//  DataStruct.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

extension ViewController {
    
    func demoDSString() {
        // 创建 DSString 实例
        let str = DSString()
        
        // 连接字符串
        str.appendString(str: "Hello, ")
        str.appendString(str: "world!")
        str.printString() // 输出：Hello, world!
        
        // 插入字符串
        str.insertString(at: 7, str: "Swift ")
        str.printString() // 输出：Hello, Swift world!
        
        // 删除子字符串
        str.removeSubstring(range: 7..<13)
        str.printString() // 输出：Hello, world!
        
        // 获取字符串长度
        let len = str.length()
        print("String length: \(len)") // 输出：String length: 13
    }
    
    func demoDSDictionary() {
        // 创建 DSDictionary 实例
        let dict = DSDictionary()
        
        // 添加键值对
        dict.addKeyValuePair(key: "apple", value: 3)
        dict.addKeyValuePair(key: "orange", value: 2)
        dict.addKeyValuePair(key: "banana", value: 1)
        dict.printDictionary() // 输出：["apple": 3, "orange": 2, "banana": 1]
        
        // 获取值
        let orangeValue = dict.getValueForKey(key: "orange")
        print("Value for 'orange': \(orangeValue!)") // 输出：Value for 'orange': 2
        
        // 删除键值对
        dict.removeKeyValuePair(key: "banana")
        dict.printDictionary() // 输出：["apple": 3, "orange": 2]
    }
    
    func demoDSSet() {
        // 创建 DSSet 实例
        let set = DSSet()
        
        // 添加元素
        set.addElement(element: 1)
        set.addElement(element: 2)
        set.addElement(element: 3)
        set.printSet() // 输出：[3, 2, 1]
        
        // 检查元素是否存在
        let containsTwo = set.containsElement(element: 2)
        print("Set contains 2: \(containsTwo)") // 输出：Set contains 2: true
        
        // 删除元素
        set.removeElement(element: 1)
        set.printSet() // 输出：[3, 2]
    }
    
    func demoDSLinkedList() {
        // 创建 DSLinkedList 实例
        let list = DSLinkedList<Int>()
        
        // 在末尾添加元素
        list.append(value: 1)
        list.append(value: 2)
        list.append(value: 3)
        list.printList() // 输出：1 -> 2 -> 3 -> nil
        
        // 在指定位置插入元素
        list.insert(value: 4, at: 2)
        list.printList() // 输出：1 -> 2 -> 4 -> 3 -> nil
        
        // 删除元素
        list.remove(at: 1)
        list.printList() // 输出：1 -> 4 -> 3 -> nil
        
        // 获取元素
        let value = list.getElement(at: 1)
        print("Value at index 1: \(value!)") // 输出：Value at index 1: 4
    }
    
    func demoDSStack() {
        // 创建 DSStack 实例
        let stack = DSStack<String>()
        
        // 入栈
        stack.push("apple")
        stack.push("banana")
        stack.push("orange")
        stack.printStack() // 输出：orange banana apple
        
        // 查看栈顶元素
        let topElement = stack.peek()
        print("Top element: \(topElement!)") // 输出：Top element: orange
        
        // 出栈
        let poppedElement = stack.pop()
        print("Popped element: \(poppedElement!)") // 输出：Popped element: orange
        
        // 检查是否为空
        let isEmpty = stack.isEmpty()
        print("Is stack empty: \(isEmpty)") // 输出：Is stack empty: false
        
        // 获取元素数量
        let count = stack.count()
        print("Stack count: \(count)") // 输出：Stack count: 2
    }
    
    func demoDSQueue() {
        // 创建 DSQueue 实例
        let queue = DSQueue<String>()
        
        // 入队
        queue.enqueue("apple")
        queue.enqueue("banana")
        queue.enqueue("orange")
        queue.printQueue() // 输出：apple <- banana <- orange <- end
        
        // 查看队首元素
        let frontElement = queue.peek()
        print("Front element: \(frontElement!)") // 输出：Front element: apple
        
        // 出队
        let dequeuedElement = queue.dequeue()
        print("Dequeued element: \(dequeuedElement!)") // 输出：Dequeued element: apple
        
        // 检查是否为空
        let isEmpty = queue.isEmpty()
        print("Is queue empty: \(isEmpty)") // 输出：Is queue empty: false
        
        // 获取元素数量
        let count = queue.count()
        print("Queue count: \(count)") // 输出：Queue count: 2
    }
    
    func demoDSGraph() {
        // 创建图对象
        let graph = DSGraph(directed: true)
        
        // 添加顶点
        graph.addVertex(0)
        graph.addVertex(1)
        graph.addVertex(2)
        graph.addVertex(3)
        graph.addVertex(4)
        
        // 添加边
        graph.addEdge(0, to: 1)
        graph.addEdge(0, to: 2)
        graph.addEdge(1, to: 3)
        graph.addEdge(1, to: 4)
        graph.addEdge(2, to: 3)
        graph.addEdge(2, to: 4)
        
        // 深度优先遍历
        let dfs = graph.depthFirstSearch(0)
        print("DFS: \(dfs)")
        
        // 广度优先遍历
        let bfs = graph.breadthFirstSearch(0)
        print("BFS: \(bfs)")
        
        // 创建栈对象
        let stack = DSStack<Int>()
        
        // 入栈
        stack.push(1)
        stack.push(2)
        stack.push(3)
        
        // 打印栈内容
        print("Stack:")
        stack.printStack()
        
        // 创建队列对象
        let queue = DSQueue<String>()
        
        // 入队列
        queue.enqueue("Apple")
        queue.enqueue("Banana")
        queue.enqueue("Orange")
        
        // 打印队列内容
        print("Queue:")
        queue.printQueue()
        
        // 创建堆对象
        let heap = DSHeap<Int>()
        
        // 插入元素
        heap.insert(3)
        heap.insert(2)
        heap.insert(1)
        heap.insert(5)
        heap.insert(4)
        
        // 移除最大元素
        let max = heap.remove()
        print("Max Element: \(max ?? -1)")
    }
    
    func demoDSBinaryTreeNode() {
        let tree = BinarySearchTree<Int>()
        tree.insert(5)
        tree.insert(2)
        tree.insert(7)
        tree.traverseInOrder(tree.root) { value in
            print(value) // 2, 5, 7
        }
    }
}
