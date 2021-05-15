//
//  TestError.swift
//  FactoryMethodPatternStudy
//
//  Created by Park on 2021/05/02.
//

import Foundation

struct TestError: SHBError {
    var errorCode = "TestError"
    
    func performError() {
        /// Unit 테스트 오류 처리 이벤트
    }
    
    func printError() {
        print("TestError")
    }
}
