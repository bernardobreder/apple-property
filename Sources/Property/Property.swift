//
//  Property.swift
//  Property
//
//  Created by Bernardo Breder on 16/12/16.
//  Copyright © 2016 Breder Company. All rights reserved.
//

import Foundation

public class Property: CustomStringConvertible {
    
    var dic: [String: String] = [:]
    
    public convenience init?(_ data: Data) {
        guard let content = String(data: data, encoding: .utf8) else { return nil }
        self.init(content)
    }
    
    public init(_ content: String) {
        for line in content.characters.split(separator: "\n").map(String.init) {
            let trim = line.trimmingCharacters(in: .whitespaces)
            if let index = trim.characters.index(of: " ") {
                let key = trim.substring(to: index)
                let value = trim.substring(from: index).trimmingCharacters(in: .whitespaces)
                dic[key] = value
            }
        }
    }
    
    public func get(_ key: String) -> String? {
        return dic[key]
    }
    
    @discardableResult
    public func set(_ key: String, value: String) -> String {
        dic[key] = value
        return value
    }
    
    public var count: Int {
        return dic.count
    }
    
    public var description: String {
        return dic.description
    }
    
}
