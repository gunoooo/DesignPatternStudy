//
//  NullPointError.swift
//  FactoryMethodPatternStudy
//
//  Created by Park on 2021/05/02.
//

import Foundation

struct NullPointError: SHBError {
    var errorCode = "NullPointError"
    
    func performError() {
        /// NullPoint 에러 처리 이벤트
    }
    
    func printError() {
        print("NullPointError")
    }
}
