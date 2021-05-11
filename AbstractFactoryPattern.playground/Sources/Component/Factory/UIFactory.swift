import UIKit

public protocol UIFactory {
    func makeButton() -> UIButton
    func makeLabel() -> UILabel
}
