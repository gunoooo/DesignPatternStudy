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
