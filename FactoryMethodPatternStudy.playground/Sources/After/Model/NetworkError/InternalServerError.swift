//
//  InternalServerError.swift
//  FactoryMethodPatternStudy
//
//  Created by Park on 2021/05/02.
//

import Foundation

struct InternalServerError: SHBError {
    var errorCode = "InternalServerError"
    
    func performError() {
        /// 서버 500 에러 처리 이벤트
    }
    
    func printError() {
        print("InternalServerError")
    }
}
