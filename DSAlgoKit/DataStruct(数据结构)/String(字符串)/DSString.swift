//
//  StringDS.swift
//  DSAlgoDS
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class DSString {
    var string: String = ""

    // 连接字符串
    func appendString(str: String) {
        string += str
    }

    // 插入字符串到指定位置
    func insertString(at index: Int, str: String) {
        string.insert(contentsOf: str, at: string.index(string.startIndex, offsetBy: index))
    }

    // 删除指定范围的子字符串
    func removeSubstring(range: Range<Int>) {
        let startIndex = string.index(string.startIndex, offsetBy: range.lowerBound)
        let endIndex = string.index(string.startIndex, offsetBy: range.upperBound)
        string.removeSubrange(startIndex..<endIndex)
    }

    // 获取字符串长度
    func length() -> Int {
        return string.count
    }

    // 打印字符串内容
    func printString() {
        print(string)
    }
}

