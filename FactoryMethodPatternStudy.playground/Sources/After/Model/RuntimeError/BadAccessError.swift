//
//  BadAccessError.swift
//  FactoryMethodPatternStudy
//
//  Created by Park on 2021/05/02.
//

import Foundation

struct BadAccessError: SHBError {
    var errorCode = "BadAccessError"
    
    func performError() {
        /// bad_access 에러 처리 이벤트
    }
    
    func printError() {
        print("BadAccessError")
    }
}
