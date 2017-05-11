//
//  MappingResult.swift
//  MyApp
//
//  Created by Eloi Guzmán Cerón on 15/02/17.
//  Copyright © 2017 Worldline. All rights reserved.
//

import Foundation

public enum MappingResult<Value> {
    case success(Value)
    case failure(MappingError)
    
    public var isSuccess: Bool {
        switch self {
        case .success:
            return true
        case .failure:
            return false
        }
    }
    
    public var isFailure: Bool {
        return !isSuccess
    }
    
    public var value: Value? {
        switch self {
        case .success(let value):
            return value
        case .failure:
            return nil
        }
    }
    
    public var error: MappingError? {
        switch self {
        case .success:
            return nil
        case .failure(let error):
            return error
        }
    }
}
