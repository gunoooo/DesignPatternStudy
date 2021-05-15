import Foundation

public enum BError: Error {
    /// Network
    case notFoundError
    case internalServerError
    /// RuntimeError
    case nullPointError
    case badAccessError
    /// CustomError
    case loginError
    case testError
    case unspecifiedError
}

public class BErrorManager {
    public init() { }
    
    public func checkError(errorCode: String) -> BError {
        switch errorCode {
            case "notFound":
                return .notFoundError
            case "internalServerError":
                return .internalServerError
            case "nullPoint":
                return .nullPointError
            case "badAccess":
                return .badAccessError
            case "loginError":
                return .loginError
            case "testError":
                return .testError
            default:
                return .unspecifiedError
        }
    }
    
    public func performError(error: BError) {
        switch error {
            case .notFoundError:
                break
            case .internalServerError:
                break
            case .nullPointError:
                break
            case .badAccessError:
                break
            case .loginError:
                break
            case .testError:
                break
            case .unspecifiedError:
                break
        }
    }
    
    public func printError(error: BError) {
        switch error {
            case .notFoundError:
                print("notFoundError")
                break
            case .internalServerError:
                print("internalServerError")
                break
            case .nullPointError:
                print("nullPointError")
                break
            case .badAccessError:
                print("badAccessError")
                break
            case .loginError:
                print("loginError")
                break
            case .testError:
                print("testError")
                break
            case .unspecifiedError:
                print("unspecifiedError")
                break
        }
    }
    
    public func fetchErrorCode(error: BError) -> String {
        switch error {
            case .notFoundError:
                return "notFoundError"
            case .internalServerError:
                return "internalServerError"
            case .nullPointError:
                return "nullPointError"
            case .badAccessError:
                return "badAccessError"
            case .loginError:
                return "loginError"
            case .testError:
                return "testError"
            case .unspecifiedError:
                return "unspecifiedError"
        }
    }
}
