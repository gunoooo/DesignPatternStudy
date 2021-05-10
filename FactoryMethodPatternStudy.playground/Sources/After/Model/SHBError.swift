//
//  Error.swift
//  FactoryMethodPatternStudy
//
//  Created by Park on 2021/05/02.
//

import Foundation

public protocol SHBError: Error {
    var errorCode: String { get }
    func performError()
    func printError()
}

class UnspecifiedError: SHBError {
    var errorCode: String = "UnspecifiedError"
    
    func performError() {
        /// 특정불가 에러 처리 이벤트
    }
    
    func printError() {
        print("UnspecifiedError")
    }
}
