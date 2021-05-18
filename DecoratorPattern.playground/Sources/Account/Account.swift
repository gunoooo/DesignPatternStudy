import Foundation

public struct 계좌Model {
    public var bankCode: String
    public var ammount: Int
}

public protocol Account {
    func 전체계좌조회() -> [계좌Model]
}

public class ShinhanAccount: Account {
    public init() {}
    
    public func 전체계좌조회() -> [계좌Model] {
        return [
            계좌Model(bankCode: "000", ammount: 1000),
            계좌Model(bankCode: "000", ammount: 3000)
        ]
    }
}
