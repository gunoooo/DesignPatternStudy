import Foundation

public class KakaoAccountDecorator: AccountDecorator {
    public override init(_ account: Account) {
        super.init(account)
    }
    
    public override func 전체계좌조회() -> [계좌Model] {
        return super.전체계좌조회() + 카카오뱅크_전체계좌조회()
    }
    
    private func 카카오뱅크_전체계좌조회() -> [계좌Model] {
        return [
            계좌Model(bankCode: "300", ammount: 300),
            계좌Model(bankCode: "300", ammount: 0)
        ]
    }
}
