//
//  NetworkErrorFactory.swift
//  FactoryMethodPatternStudy
//
//  Created by Park on 2021/05/02.
//

import Foundation

public class NetworkErrorFactory: SHBErrorFactory {
    public init() { }
    
    public func makeError(errorCode: String) -> SHBError {
        switch errorCode {
            case "notFound":
                return NotFoundError()
            case "internalServerError":
                return InternalServerError()
            default:
                return UnspecifiedError()
        }
    }
}
