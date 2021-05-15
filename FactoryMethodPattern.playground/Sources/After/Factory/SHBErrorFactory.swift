//
//  ErrorFactory.swift
//  FactoryMethodPatternStudy
//
//  Created by Park on 2021/05/02.
//

import Foundation

public protocol SHBErrorFactory {
    func makeError(errorCode: String) -> SHBError
}
