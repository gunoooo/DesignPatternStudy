import Foundation

public class AccountDecorator: Account {
    private var account: Account
    
    public init(_ account: Account) {
        self.account = account
    }
    
    public func 전체계좌조회() -> [계좌Model] {
        return account.전체계좌조회()
    }
}
