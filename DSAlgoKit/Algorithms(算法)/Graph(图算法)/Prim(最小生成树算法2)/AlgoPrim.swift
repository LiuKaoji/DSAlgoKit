//
//  AlgoPrim.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class AlgoPrim {
    typealias Graph = [Int: [(node: Int, weight: Int)]]

    func primAlgorithm(graph: Graph, startVertex: Int) -> [(Int, Int)] {
        var visited = Set<Int>()
        var mstEdges: [(Int, Int)] = []
        var edgeCandidates: [(weight: Int, vertex: Int)] = graph[startVertex]!.map { ($1, $0) }.sorted(by: { $0.weight < $1.weight })

        visited.insert(startVertex)

        while let (minWeight, minVertex) = edgeCandidates.popLast() {
            if visited.contains(minVertex) { continue }

            visited.insert(minVertex)
            mstEdges.append((minVertex, minWeight))

            let newEdges = graph[minVertex]!
            for (vertex, weight) in newEdges {
                if !visited.contains(vertex) {
                    edgeCandidates.append((weight, vertex))
                }
            }

            edgeCandidates.sort(by: { $0.weight > $1.weight })
        }

        return mstEdges
    }
}



