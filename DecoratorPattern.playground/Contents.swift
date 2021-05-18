import UIKit

private var mainAccountList: [계좌Model] = {
    return KakaoAccountDecorator(
        IBKAccountDecorator(
            KookminAccountDecorator(
                ShinhanAccount()
            )
        )
    ).전체계좌조회()
}()

private var top3AccountList: [계좌Model] = {
    return KookminAccountDecorator(
        IBKAccountDecorator(
            ShinhanAccount()
        )
    ).전체계좌조회()
}()

private var suggestAccountList: [계좌Model] = {
    return KakaoAccountDecorator(
        ShinhanAccount()
    ).전체계좌조회()
}()
