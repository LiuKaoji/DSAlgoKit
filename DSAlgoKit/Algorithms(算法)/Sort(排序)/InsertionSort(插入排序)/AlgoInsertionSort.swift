//
//  AlgoInsertionSort.swift
//  DSAlgoDemo
//
//  Created by kaoji on 1/30/23.
//

import Foundation

/*
 这段代码实现了插入排序算法，该算法通过遍历待排序数组，将每个元素插入已排序的数组中的适当位置，以达到排序的目的。
 具体实现是从第二个元素开始遍历，将当前元素存储为key，然后在已排序的数组中找到合适的位置插入该元素。
 这个过程通过不断比较key和已排序的元素，将大于key的元素向右移动，直到找到小于或等于key的元素为止。
 最终将key插入到正确的位置，重复这个过程直到遍历完整个数组。
 */
class AlgoInsertionSort {
    func insertionSort(_ array: inout [Int]) {
        for i in 1..<array.count {
            let key = array[i]
            var j = i - 1
            while j >= 0 && array[j] > key {
                array[j + 1] = array[j]
                j -= 1
            }
            array[j + 1] = key
        }
    }
}
