//
//  MappingErrors.swift
//  MyApp
//
//  Created by Eloi Guzmán Cerón on 15/02/17.
//  Copyright © 2017 Worldline. All rights reserved.
//

import Foundation

public enum MappingError: Swift.Error {
    case expectedObjectType
    case expectedArrayType
    case expectedCompulsoryParameter(name: String?)
    case expectedType(type: String?, key: String?)
    case other(error: Swift.Error)
    case unknown
}
