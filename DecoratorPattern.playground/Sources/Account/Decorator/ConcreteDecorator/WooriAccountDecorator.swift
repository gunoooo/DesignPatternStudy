import Foundation

public class WooriAccountDecorator: AccountDecorator {
    public override init(_ account: Account) {
        super.init(account)
    }
    
    public override func 전체계좌조회() -> [계좌Model] {
        return super.전체계좌조회() + 우리은행_전체계좌조회()
    }
    
    private func 우리은행_전체계좌조회() -> [계좌Model] {
        return [
            계좌Model(bankCode: "700", ammount: 100),
            계좌Model(bankCode: "700", ammount: 5000)
        ]
    }
}
