//
//  DSBinaryStree.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

/// 二叉树节点
class DSBinaryTreeNode<T> {
    var value: T
    var leftChild: DSBinaryTreeNode?
    var rightChild: DSBinaryTreeNode?
    
    init(value: T) {
        self.value = value
    }
}

/// 二叉树
class BinarySearchTree<T: Comparable> {
    var root: DSBinaryTreeNode<T>?
    
    /// 插入节点
    func insert(_ value: T) {
        let newNode = DSBinaryTreeNode(value: value)
        if let root = root {
            insert(from: root, newNode: newNode)
        } else {
            root = newNode
        }
    }
    
    /// 在指定节点下插入新节点
    private func insert(from node: DSBinaryTreeNode<T>, newNode: DSBinaryTreeNode<T>) {
        if newNode.value < node.value {
            if let leftChild = node.leftChild {
                insert(from: leftChild, newNode: newNode)
            } else {
                node.leftChild = newNode
            }
        } else {
            if let rightChild = node.rightChild {
                insert(from: rightChild, newNode: newNode)
            } else {
                node.rightChild = newNode
            }
        }
    }
    
    /// 中序遍历
    func traverseInOrder(_ node: DSBinaryTreeNode<T>?, visit: (T) -> Void) {
        guard let node = node else { return }
        traverseInOrder(node.leftChild, visit: visit)
        visit(node.value)
        traverseInOrder(node.rightChild, visit: visit)
    }
}
