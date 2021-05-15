//
//  CustomErrorFactory.swift
//  FactoryMethodPatternStudy
//
//  Created by Park on 2021/05/02.
//

import Foundation

public class CustomErrorFactory: SHBErrorFactory {
    public init() { }
    
    public func makeError(errorCode: String) -> SHBError {
        switch errorCode {
            case "loginError":
                return LoginError()
            case "testError":
                return TestError()
            default:
                return UnspecifiedError()
        }
    }
}
