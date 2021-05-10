//
//  RuntimeErrorFactory.swift
//  FactoryMethodPatternStudy
//
//  Created by Park on 2021/05/02.
//

import Foundation

public class RuntimeErrorFactory: SHBErrorFactory {
    public init() { }
    
    public func makeError(errorCode: String) -> SHBError {
        switch errorCode {
            case "nullPoint":
                return NullPointError()
            case "badAccess":
                return BadAccessError()
            default:
                return UnspecifiedError()
        }
    }
}
