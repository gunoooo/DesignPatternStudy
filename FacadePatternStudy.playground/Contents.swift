import UIKit

// MARK: - BankingWorker

class Before_BankingWorker {
    struct 계좌Model {
        var 잔액: Int?
        var 은행코드: String
    }
    
    func 전체계좌조회() -> [계좌Model] {
        return
            [
                계좌Model(잔액: 10, 은행코드: "000"),
                계좌Model(은행코드: "111"),
                계좌Model(잔액: 0, 은행코드: "000")
            ]
    }
    
    func 잔액조회(계좌: 계좌Model) -> Int {
        return 0
    }
}

class After_BankingWorker {
    struct 계좌Model {
        var 잔액: Int?
        var 은행코드: String
    }
    
    func 당타행전체계좌조회() -> [계좌Model] {
        전체계좌조회().map { 계좌 in
            if 계좌.은행코드 != "000" {
                return 계좌Model(
                    잔액: 잔액조회(계좌: 계좌),
                    은행코드: 계좌.은행코드
                )
            }
            return 계좌
        }
    }
    
    private func 전체계좌조회() -> [계좌Model] {
        return
            [
                계좌Model(잔액: 10, 은행코드: "000"),
                계좌Model(은행코드: "111"),
                계좌Model(잔액: 0, 은행코드: "000")
            ]
    }
    
    private func 잔액조회(계좌: 계좌Model) -> Int {
        return 0
    }
}

// MARK: - Client

func before() {
    for 계좌 in 당타행전체계좌조회() {
        print("[\(계좌.은행코드)] : \(계좌.잔액 ?? 0)")
    }
    
    func 당타행전체계좌조회() -> [Before_BankingWorker.계좌Model] {
        let bankingWorker = Before_BankingWorker()
        
        return bankingWorker.전체계좌조회().map { 계좌 -> Before_BankingWorker.계좌Model in
            if 계좌.은행코드 != "000" {
                return Before_BankingWorker.계좌Model(
                    잔액: bankingWorker.잔액조회(계좌: 계좌),
                    은행코드: 계좌.은행코드
                )
            }
            return 계좌
        }
    }
}

func after() {
    let bankingWorker = After_BankingWorker()
    for 계좌 in bankingWorker.당타행전체계좌조회() {
        print("[\(계좌.은행코드)] : \(계좌.잔액 ?? 0)")
    }
}
