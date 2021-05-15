import UIKit
import Foundation

// MARK: - Client

func before() {
    let errorManager: BErrorManager = BErrorManager()
    let error = errorManager.checkError(errorCode: "loginError")
    print(errorManager.fetchErrorCode(error: error))
    errorManager.printError(error: error)
    errorManager.performError(error: error)
}

func after() {
    let customErrorFactory: SHBErrorFactory = CustomErrorFactory()
    let error = customErrorFactory.makeError(errorCode: "loginError")
    print(error.errorCode)
    error.printError()
    error.performError()
}
