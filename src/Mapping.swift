//
//  Mapping.swift
//  MyApp
//
//  Created by Eloi Guzmán Cerón on 28/11/16.
//  Copyright © 2016 Worldline. All rights reserved.
//

import UIKit

/*
let exampleMapping : Mapping<String,Int> = Mapping { (a: String) in return 0 }

let exampleMapping2 = Mapping(f: { (a: String) in return Date() })
*/

public typealias MappingFunction<InputType,OutputType> = ( _ input: InputType) -> (OutputType)

public class Mapping<InputValue,OutputValue>: NSObject {

    public private(set) var mappingClosure : MappingFunction<InputValue,OutputValue>
    
    public init(_ mapping: @escaping (InputValue) -> (OutputValue)) {
        self.mappingClosure = mapping
    }
    
    public func map(_ input: InputValue) -> (OutputValue) {
        return self.mappingClosure(input)
    }
}
