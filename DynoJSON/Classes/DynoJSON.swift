//
//  DynamicJSON.swift
//  DynamicJSON
//
//  Created by Andrew Vergunov on 9/26/18.
//  Copyright © 2018 Andrew Vergunov. All rights reserved.
//

import Foundation

public typealias JSON = [String: Any]

@dynamicMemberLookup
public protocol DynamicNested {}

public extension DynamicNested {
    subscript(dynamicMember member: String) -> Self? {
        return nil
    }
}

extension Dictionary: DynamicNested where Dictionary.Key == String,
Dictionary.Value == Any {
    public subscript(dynamicMember member: String) -> JSON? {
        return self[member] as? JSON
    }
    
    public subscript<Type>(dynamicMember member: String) -> Type? {
        print(Type.self)
        return self[member] as? Type
    }
}
