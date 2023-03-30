//
//  AlgoDFS.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class GraphNode {
    let value: Int
    var neighbors: [GraphNode]

    init(value: Int, neighbors: [GraphNode] = []) {
        self.value = value
        self.neighbors = neighbors
    }
}

class AlgoDFS {
    func depthFirstSearch(_ node: GraphNode, visited: inout Set<Int>) {
        guard !visited.contains(node.value) else { return }

        print("Visiting node: \(node.value)")
        visited.insert(node.value)

        for neighbor in node.neighbors {
            depthFirstSearch(neighbor, visited: &visited)
        }
    }
}
