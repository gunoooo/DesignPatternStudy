//
//  NotFoundError.swift
//  FactoryMethodPatternStudy
//
//  Created by Park on 2021/05/02.
//

import Foundation

struct NotFoundError: SHBError {
    var errorCode = "NotFoundError"
    
    func performError() {
        /// 서버 404 에러 처리 이벤트
    }
    
    func printError() {
        print("NotFoundError")
    }
}
