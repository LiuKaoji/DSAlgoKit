//
//  DSDictionary.swift
//  DSAlgoDS
//
//  Created by kaoji on 1/30/23.
//

import Foundation

class DSDictionary {
    var dictionary: [String: Int] = [:]

    // 向字典中添加键值对
    func addKeyValuePair(key: String, value: Int) {
        dictionary[key] = value
    }

    // 删除字典中的键值对
    func removeKeyValuePair(key: String) {
        dictionary.removeValue(forKey: key)
    }

    // 获取字典中的值
    func getValueForKey(key: String) -> Int? {
        return dictionary[key]
    }

    // 打印字典内容
    func printDictionary() {
        print(dictionary)
    }
}

