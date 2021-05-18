import Foundation

public class IBKAccountDecorator: AccountDecorator {
    public override init(_ account: Account) {
        super.init(account)
    }
    
    public override func 전체계좌조회() -> [계좌Model] {
        return super.전체계좌조회() + 기업은행_전체계좌조회()
    }
    
    private func 기업은행_전체계좌조회() -> [계좌Model] {
        return [
            계좌Model(bankCode: "900", ammount: 700),
            계좌Model(bankCode: "900", ammount: 100000)
        ]
    }
}
