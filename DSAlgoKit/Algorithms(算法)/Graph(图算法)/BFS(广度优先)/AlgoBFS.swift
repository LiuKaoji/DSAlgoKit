//
//  AlgoBFS.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoBFS {
    func breadthFirstSearch(_ startNode: GraphNode) {
        var visited = Set<Int>()
        var queue: [GraphNode] = [startNode]

        while !queue.isEmpty {
            let node = queue.removeFirst()

            if visited.contains(node.value) { continue }

            print("Visiting node: \(node.value)")
            visited.insert(node.value)

            for neighbor in node.neighbors {
                queue.append(neighbor)
            }
        }
    }
}

