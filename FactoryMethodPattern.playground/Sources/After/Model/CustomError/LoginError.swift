//
//  LoginError.swift
//  FactoryMethodPatternStudy
//
//  Created by Park on 2021/05/02.
//

import Foundation

struct LoginError: SHBError {
    var errorCode = "LoginError"
    
    func performError() {
        /// 로그인 에러 처리 이벤트
    }
    
    func printError() {
        print("LoginError")
    }
}
