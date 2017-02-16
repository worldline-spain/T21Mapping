//
//  Mapping.swift
//  MyApp
//
//  Created by Eloi Guzmán Cerón on 28/11/16.
//  Copyright © 2016 Worldline. All rights reserved.
//

import UIKit

/*
//Swift does not support generics in typealias definitions,
public struct Mapping<InputType,OutputType> {
    public let f: (InputType) -> (OutputType)
}

let exampleMapping = Mapping { (a: String) in return 0 }

let exampleMapping2 = Mapping(f: { (a: String) in return Date() })
*/

public class Mapping<InputValue,OutputValue>: NSObject {

    public private(set) var mappingClosure : (InputValue) -> (OutputValue)
    
    public init(_ mapping: @escaping (InputValue) -> (OutputValue)) {
        self.mappingClosure = mapping
    }
    
    public func map(_ input: InputValue) -> (OutputValue) {
        return self.mappingClosure(input)
    }
}
