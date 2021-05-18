import Foundation

public class KookminAccountDecorator: AccountDecorator {
    public override init(_ account: Account) {
        super.init(account)
    }
    
    public override func 전체계좌조회() -> [계좌Model] {
        return super.전체계좌조회() + 국민은행_전체계좌조회()
    }
    
    private func 국민은행_전체계좌조회() -> [계좌Model] {
        return [
            계좌Model(bankCode: "100", ammount: 100),
            계좌Model(bankCode: "100", ammount: 5000)
        ]
    }
}
