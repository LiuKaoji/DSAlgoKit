//
//  AlgoDijkstra.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoDijkstra {
    typealias Graph = [Int: [(node: Int, weight: Int)]]

    func dijkstraShortestPath(graph: Graph, source: Int) -> [Int: Int] {
        var distances = [Int: Int]()
        var unvisitedNodes = Set(graph.keys)

        for node in unvisitedNodes {
            distances[node] = Int.max
        }
        distances[source] = 0

        while !unvisitedNodes.isEmpty {
            guard let currentNode = unvisitedNodes.min(by: { distances[$0]! < distances[$1]! }) else { break }

            unvisitedNodes.remove(currentNode)

            for (neighbor, weight) in graph[currentNode]! {
                let tentativeDistance = distances[currentNode]! + weight
                distances[neighbor] = min(distances[neighbor]!, tentativeDistance)
            }
        }

        return distances
    }
}

