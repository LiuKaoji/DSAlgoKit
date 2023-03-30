//
//  DSGraph.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//


// DSGraph.swift

// 定义图的数据结构
class DSGraph {
    
    var adjacencyList: [Int: [Int]] // 邻接表表示图
    var isDirected: Bool // 标识是否是有向图
    
    init(directed: Bool = false) {
        adjacencyList = [Int: [Int]]()
        isDirected = directed
    }
    
    // 添加一个顶点到图中
    func addVertex(_ vertex: Int) {
        adjacencyList[vertex] = []
    }
    
    // 添加一条边到图中
    func addEdge(_ from: Int, to: Int) {
        adjacencyList[from]?.append(to)
        if !isDirected {
            adjacencyList[to]?.append(from)
        }
    }
    
    // 深度优先遍历
    func depthFirstSearch(_ startVertex: Int) -> [Int] {
        var visited = [Int]() // 记录访问过的顶点
        var stack = [startVertex] // 栈
        
        while !stack.isEmpty {
            let vertex = stack.removeLast()
            if !visited.contains(vertex) {
                visited.append(vertex)
                stack += adjacencyList[vertex]?.reversed() ?? []
            }
        }
        
        return visited
    }
    
    // 广度优先遍历
    func breadthFirstSearch(_ startVertex: Int) -> [Int] {
        var visited = [Int]() // 记录访问过的顶点
        var queue = [startVertex] // 队列
        
        while !queue.isEmpty {
            let vertex = queue.removeFirst()
            if !visited.contains(vertex) {
                visited.append(vertex)
                queue += adjacencyList[vertex] ?? []
            }
        }
        
        return visited
    }
}

// 定义栈的数据结构
class  DSGraphStack<T> {
    
    var array = [T]()
    
    // 是否为空
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    // 栈的大小
    var count: Int {
        return array.count
    }
    
    // 入栈
    func push(_ element: T) {
        array.append(element)
    }
    
    // 出栈
    func pop() -> T? {
        return array.popLast()
    }
    
    // 栈顶元素
    func peek() -> T? {
        return array.last
    }
}

// 定义队列的数据结构
class  DSGraphQueue<T> {
    
    var array = [T]()
    
    // 是否为空
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    // 队列的大小
    var count: Int {
        return array.count
    }
    
    // 入队列
    func enqueue(_ element: T) {
        array.append(element)
    }
    
    // 出队列
    func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    // 队列头部元素
    func peek() -> T? {
        return array.first
    }
}

// 定义堆的数据结构
class DSHeap<T: Comparable> {
    
    var array = [T]()
    
    // 堆的大小
    var count: Int {
        return array.count
    }
    
    // 获取父节点的下标
    func parentIndex(_ index: Int) -> Int {
        return (index - 1) / 2
    }
    
    // 获取左子节点的下标
    func leftChildIndex(_ index: Int) -> Int {
        return index * 2 + 1
    }
    
    // 获取右子节点的下标
    func rightChildIndex(_ index: Int) -> Int {
        return index * 2 + 2
    }
    
    // 获取最大元素的下标
    func maxIndex(_ leftChild: Int, _ rightChild: Int) -> Int {
        if rightChild >= count {
            return leftChild
        } else if array[leftChild] > array[rightChild] {
            return leftChild
        } else {
            return rightChild
        }
    }
    
    // 上移操作
    func shiftUp(_ index: Int) {
        var childIndex = index
        var parentIndex = self.parentIndex(childIndex)
        while childIndex > 0 && array[childIndex] > array[parentIndex] {
            swap(&array[childIndex], &array[parentIndex])
            childIndex = parentIndex
            parentIndex = self.parentIndex(childIndex)
        }
    }
    
    // 下移操作
    func shiftDown(_ index: Int) {
        var parentIndex = index
        while true {
            let leftChildIndex = self.leftChildIndex(parentIndex)
            let rightChildIndex = self.rightChildIndex(parentIndex)
            var candidateIndex = 0
            
            if leftChildIndex < count {
                candidateIndex = maxIndex(leftChildIndex, rightChildIndex)
            } else if rightChildIndex < count {
                candidateIndex = rightChildIndex
            } else {
                break
            }
            
            if array[parentIndex] < array[candidateIndex] {
                swap(&array[parentIndex], &array[candidateIndex])
                parentIndex = candidateIndex
            } else {
                break
            }
        }
    }
    
    // 插入元素
    func insert(_ element: T) {
        array.append(element)
        shiftUp(count - 1)
    }
    
    // 移除最大元素
    func remove() -> T? {
        if count == 0 {
            return nil
        } else {
            let max = array[0]
            array[0] = array[count - 1]
            array.removeLast()
            shiftDown(0)
            return max
        }
    }
}

