//
//  AlgoKruskal.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class UnionFind {
    private var parents: [Int]

    init(size: Int) {
        parents = Array(0..<size)
    }

    func find(_ x: Int) -> Int {
        if parents[x] != x {
            parents[x] = find(parents[x])
        }
        return parents[x]
    }

    func union(_ x: Int, _ y: Int) {
        let rootX = find(x)
        let rootY = find(y)
        parents[rootX] = rootY
    }
}

class Edge: Comparable {
    let src: Int
    let dest: Int
    let weight: Int

    init(src: Int, dest: Int, weight: Int) {
        self.src = src
        self.dest = dest
        self.weight = weight
    }

    static func < (lhs: Edge, rhs: Edge) -> Bool {
        return lhs.weight < rhs.weight
    }

    static func == (lhs: Edge, rhs: Edge) -> Bool {
        return lhs.weight == rhs.weight
    }
}

class AlgoKruskal {
    func kruskalAlgorithm(edges: [Edge], vertices: Int) -> [Edge] {
        let sortedEdges = edges.sorted()
        let uf = UnionFind(size: vertices)
        var mst: [Edge] = []

        for edge in sortedEdges {
            if uf.find(edge.src) != uf.find(edge.dest) {
                mst.append(edge)
                uf.union(edge.src, edge.dest)
            }
        }

        return mst
    }
}

