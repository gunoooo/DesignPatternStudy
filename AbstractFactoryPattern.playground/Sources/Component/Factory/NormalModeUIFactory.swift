import UIKit

public class NormalModeUIFactory: UIFactory {
    public init() {}
    
    public func makeButton() -> UIButton {
        return GradationButton()
    }
    
    public func makeLabel() -> UILabel {
        return BoldLabel()
    }
}
