//
//  Algorithms.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

//写一个函数 调用这个类的所有方法进行演示

//MARK: -排序
extension ViewController {
    
    func demoAlgoBubbleSort(){
        // 创建一个 BubbleSort 的实例
        let bubbleSort = AlgoBubbleSort()
        // 创建一个待排序的数组
        var array = [5, 3, 8, 4, 2]

        // 调用 bubbleSort 方法进行排序
        bubbleSort.bubbleSort(&array)

        // 打印排序后的数组
        print(array)
    }
    
    func demoSelectionSort() {
        // 创建一个 BubbleSort 的实例
        let selectionSort = AlgoSelectionSort()

        // 创建一个待排序的数组
        var array = [5, 2, 7, 3, 9, 4, 1, 8, 6]

        // 打印排序前数组
        print("Original array: \(array)")

        // 调用 selectionSort 方法进行排序
        selectionSort.selectionSort(&array)

        // 打印排序后的数组
        print("Sorted array: \(array)")
    }
    
    func demoInsertionSort() {
        // 创建一个 BubbleSort 的实例
        let algo = AlgoInsertionSort()
        
        // 创建一个待排序的数组
        var array = [5, 2, 4, 6, 1, 3]
        
        // 打印排序前数组
        print("排序前：(array)")
        
        // 调用 insertionSort 方法进行排序
        algo.insertionSort(&array)
        
        // 打印排序后的数组
        print("排序后：(array)")
    }

    func demoAlgoShellSort() {
        var array = [5, 2, 9, 3, 7, 6, 1, 8, 4]
        let algoShellSort = AlgoShellSort()
        print("排序前：", array)
        algoShellSort.shellSort(&array)
        print("排序后：", array)
    }
    
    func demoMergeSort() {
        var array = [5, 2, 8, 4, 7, 1, 3, 6]
        let algo = AlgoMergeSort()
        print("Before sorting: (array)")
        algo.mergeSort(&array)
        print("After sorting: (array)")
    }
    
    func demoQuickSort() {
        var array = [5, 2, 8, 4, 7, 1, 9, 3, 6]
        let sorter = AlgoQuickSort()
        sorter.quickSort(&array, low: 0, high: array.count - 1)
        print(array)
    }
    
    func demoHeapSort() {
        var arr = [9, 2, 7, 1, 5, 8, 3, 4, 6]
        let algo = AlgoHeapSort()
        algo.heapSort(&arr)
        print(arr) // 输出 [1, 2, 3, 4, 5, 6, 7, 8, 9]
    }

    func demoAlgoCountingSort(){
        var array = [5, 2, 9, 5, 2, 3, 5]
        print("Before sorting: \(array)")
        let sorter = AlgoCountingSort()
        sorter.countingSort(&array)
        print("After sorting: \(array)")
    }
    
    func demoRadixSort() {
        var array = [170, 45, 75, 90, 802, 24, 2, 66]
        print("原始数组：", array)
        let algo = AlgoRadixSort()
        algo.radixSort(&array)
        print("排序后数组：", array)
    }

    /*
     该函数创建了一个包含 9 个顶点和 14 条边的图，并调用了
     AlgoKruskal 类的 kruskalAlgorithm(edges:vertices:) 方法来求解最小生成树。
     最后打印出了最小生成树的所有边以及它们的权重总和。
     */
    func demoKruskalAlgorithm() {
        let edges = [
            Edge(src: 0, dest: 1, weight: 4),
            Edge(src: 0, dest: 7, weight: 8),
            Edge(src: 1, dest: 2, weight: 8),
            Edge(src: 1, dest: 7, weight: 11),
            Edge(src: 2, dest: 3, weight: 7),
            Edge(src: 2, dest: 8, weight: 2),
            Edge(src: 2, dest: 5, weight: 4),
            Edge(src: 3, dest: 4, weight: 9),
            Edge(src: 3, dest: 5, weight: 14),
            Edge(src: 4, dest: 5, weight: 10),
            Edge(src: 5, dest: 6, weight: 2),
            Edge(src: 6, dest: 7, weight: 1),
            Edge(src: 6, dest: 8, weight: 6),
            Edge(src: 7, dest: 8, weight: 7),
        ]
        
        let kruskal = AlgoKruskal()
        let mst = kruskal.kruskalAlgorithm(edges: edges, vertices: 9)
        
        print("Kruskal Algorithm:")
        var totalWeight = 0
        for edge in mst {
            totalWeight += edge.weight
            print("\(edge.src) --(\(edge.weight))-> \(edge.dest)")
        }
        print("Total weight: \(totalWeight)")
    }

    func demoPrimAlgorithm(){
        
        let graph: AlgoPrim.Graph = [    0: [(1, 4), (7, 8)],
            1: [(0, 4), (7, 11), (2, 8)],
            2: [(1, 8), (8, 2), (3, 7), (5, 4)],
            3: [(2, 7), (4, 9), (5, 14)],
            4: [(3, 9), (5, 10)],
            5: [(2, 4), (3, 14), (4, 10), (6, 2)],
            6: [(5, 2), (7, 1), (8, 6)],
            7: [(0, 8), (1, 11), (6, 1), (8, 7)],
            8: [(2, 2), (6, 6), (7, 7)]
        ]

        let algoPrim = AlgoPrim()
        let mst = algoPrim.primAlgorithm(graph: graph, startVertex: 0)
        print(mst)//[(1, 4), (7, 8), (6, 1), (8, 7), (2, 2), (3, 7), (5, 4)]
    }
    
    func demoBucketSort() {
        var arr: [Double] = [0.87, 0.11, 0.23, 0.39, 0.74, 0.36, 0.15, 0.28]

        let bucketSort = AlgoBucketSort()
        arr = bucketSort.bucketSort(arr)

        print(arr)
    }

}

//MARK: -查找
extension ViewController {
    
    /*
     在这个示例中，我们首先创建一个整数数组 array，然后定义了要搜索的目标值 target。
     接下来，我们创建一个 AlgoLinearSearch 的实例 searchAlgorithm，
     然后调用 linearSearch 函数来执行搜索。最后，我们检查搜索结果是否为 nil，
     如果不是，则输出目标值在数组中的位置。
     */
    func demoLinearSearch() {
        var array = [2, 4, 6, 8, 10, 12, 14]
        let target = 10
        let searchAlgorithm = AlgoLinearSearch()
        if let index = searchAlgorithm.linearSearch(array, target: target) {
            print("The target \(target) is found at index \(index) in the array.")
        } else {
            print("The target \(target) is not found in the array.")
        }
    }
    
    func demoBinarySearch() {
        let array = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
        let target1 = 10
        let target2 = 3
        
        let algoBinarySearch = AlgoBinarySearch()
        
        if let result1 = algoBinarySearch.binarySearch(array, target: target1) {
            print("Target \(target1) found at index \(result1)")
        } else {
            print("Target \(target1) not found in the array")
        }
        
        if let result2 = algoBinarySearch.binarySearch(array, target: target2) {
            print("Target \(target2) found at index \(result2)")
        } else {
            print("Target \(target2) not found in the array")
        }
    }
    
    func demoInterpolationSearch() {
        let array = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]
        let algoInterpolationSearch = AlgoInterpolationSearch()
        
        if let result = algoInterpolationSearch.interpolationSearch(array, target: 10) {
            print("10 found at index \(result)")
        } else {
            print("10 not found in array")
        }
        
        if let result = algoInterpolationSearch.interpolationSearch(array, target: 15) {
            print("15 found at index \(result)")
        } else {
            print("15 not found in array")
        }
    }
    
    func demoFibonacciSearch() {
        let arr = [3, 5, 6, 8, 9, 10, 12, 13, 18, 20, 21, 24, 25, 26, 27]
        let searchValue = 21

        let algo = AlgoFibonacciSearch()
        if let index = algo.fibonacciSearch(arr, target: searchValue) {
            print("Found \(searchValue) at index \(index)")
        } else {
            print("\(searchValue) not found in array")
        }
    }

    func demoHashTable() {
        var hashTable = HashTable<String, Int>()

        hashTable.put(key: "Alice", value: 23)
        hashTable.put(key: "Bob", value: 32)
        hashTable.put(key: "Charlie", value: 27)
        hashTable.put(key: "David", value: 45)

        print("Value for key Bob: \(hashTable.get(key: "Bob") ?? -1)")

        if let removedValue = hashTable.remove(key: "Charlie") {
            print("Removed value for key Charlie: \(removedValue)")
        }

        print("Value for key Charlie: \(hashTable.get(key: "Charlie") ?? -1)")
    }


}

//MARK: -字符串匹配
extension ViewController {
    func demoNaiveStringMatching() {
        let text = "ABACADABRAC"
        let pattern = "ABRA"
        let indices = AlgoNaiveStringMatching().naiveSearch(text: text, pattern: pattern)

        print("文本: \(text)")
        print("模式: \(pattern)")
        print("匹配的起始位置: \(indices)")
    }
    
    func demoRabinKarp() {
        let text = "ABCABCDABCDABCEABCDABDABCEABCDABCEABCABCF"
        let pattern = "ABCDABCE"
        
        let indices = AlgoRabinKarp().search(text: text, pattern: pattern)
        if indices.isEmpty {
            print("Pattern not found in the text.")
        } else {
            print("Pattern found at indices: \(indices)")
        }
    }
    
    func demoKMP() {
        let text = "ABCABCABCDABCDABCABC"
        let pattern = "ABC"
        let indices = AlgoKMP().search(text: text, pattern: pattern)

        if indices.isEmpty {
            print("在文本串中找不到模式串")
        } else {
            print("在文本串中找到了模式串，起始位置分别为：")
            for index in indices {
                print(index)
            }
        }
    }
    
}

//MARK: -动态规划
extension ViewController {
    
    func demoAlgoDynamicProgramming() {
        let dp = AlgoDynamicProgramming()

        let array1 = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
        let maxSum1 = dp.maxSubarraySum(array1)
        print("Max subarray sum of \(array1) is \(maxSum1)")

        let array2 = [1, 2, 3, -2, 5]
        let maxSum2 = dp.maxSubarraySum(array2)
        print("Max subarray sum of \(array2) is \(maxSum2)")

        let array3: [Int] = []
        let maxSum3 = dp.maxSubarraySum(array3)
        print("Max subarray sum of \(array3) is \(maxSum3)")
    }

    
}

//MARK: -图算法
extension ViewController {
    func demoDFS() {
        let node1 = GraphNode(value: 1)
        let node2 = GraphNode(value: 2)
        let node3 = GraphNode(value: 3)
        let node4 = GraphNode(value: 4)
        let node5 = GraphNode(value: 5)

        node1.neighbors = [node2, node3]
        node2.neighbors = [node1, node4, node5]
        node3.neighbors = [node1]
        node4.neighbors = [node2]
        node5.neighbors = [node2]

        let algoDFS = AlgoDFS()
        var visited: Set<Int> = []

        algoDFS.depthFirstSearch(node1, visited: &visited)
    }

    func demoBFS() {
        let nodeA = GraphNode(value: 0)
        let nodeB = GraphNode(value: 1)
        let nodeC = GraphNode(value: 2)
        let nodeD = GraphNode(value: 3)
        let nodeE = GraphNode(value: 4)
        let nodeF = GraphNode(value: 5)
        
        nodeA.neighbors = [nodeB, nodeC, nodeD]
        nodeB.neighbors = [nodeE, nodeF]
        nodeC.neighbors = [nodeF]
        
        let bfs = AlgoBFS()
        bfs.breadthFirstSearch(nodeA)
    }
    
    func demoDijkstra() {
        let graph: AlgoDijkstra.Graph = [
            0: [(1, 4), (2, 2)],
            1: [(2, 3), (3, 2), (4, 3)],
            2: [(1, 1), (3, 5)],
            3: [(4, 1)],
            4: [(3, 4)]
        ]

        let algoDijkstra = AlgoDijkstra()
        let shortestPaths = algoDijkstra.dijkstraShortestPath(graph: graph, source: 0)

        print("Shortest paths:")
        for (node, distance) in shortestPaths {
            print("From source to node \(node): \(distance)")
        }
    }

    func demoKruskal() {
        let edges = [
            Edge(src: 0, dest: 1, weight: 4),
            Edge(src: 0, dest: 7, weight: 8),
            Edge(src: 1, dest: 2, weight: 8),
            Edge(src: 1, dest: 7, weight: 11),
            Edge(src: 2, dest: 3, weight: 7),
            Edge(src: 2, dest: 8, weight: 2),
            Edge(src: 2, dest: 5, weight: 4),
            Edge(src: 3, dest: 4, weight: 9),
            Edge(src: 3, dest: 5, weight: 14),
            Edge(src: 4, dest: 5, weight: 10),
            Edge(src: 5, dest: 6, weight: 2),
            Edge(src: 6, dest: 7, weight: 1),
            Edge(src: 6, dest: 8, weight: 6),
            Edge(src: 7, dest: 8, weight: 7),
        ]

        let mst = AlgoKruskal().kruskalAlgorithm(edges: edges, vertices: 9)
        let totalWeight = mst.reduce(0, { $0 + $1.weight })

        print("最小生成树包含的边：")
        for edge in mst {
            print("\(edge.src) -> \(edge.dest) (\(edge.weight))")
        }

        print("最小生成树的总权重为：\(totalWeight)")
    }

    func demoPrim() {
        let graph: AlgoPrim.Graph = [
            0: [(1, 4), (7, 8)],
            1: [(0, 4), (2, 8), (7, 11)],
            2: [(1, 8), (3, 7), (5, 4), (8, 2)],
            3: [(2, 7), (4, 9), (5, 14)],
            4: [(3, 9), (5, 10)],
            5: [(2, 4), (3, 14), (4, 10), (6, 2)],
            6: [(5, 2), (7, 1), (8, 6)],
            7: [(0, 8), (1, 11), (6, 1), (8, 7)],
            8: [(2, 2), (6, 6), (7, 7)]
        ]
        
        let mst = AlgoPrim().primAlgorithm(graph: graph, startVertex: 0)
        let totalWeight = mst.reduce(0, { $0 + $1.1 })
        
        print("最小生成树包含的边：")
        for (vertex, weight) in mst {
            print("\(vertex) -> \(weight)")
        }
        
        print("最小生成树的总权重为：\(totalWeight)")
    }
    
}
