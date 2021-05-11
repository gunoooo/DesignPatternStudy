import UIKit

public class SimpleModeUIFactory: UIFactory {
    public init() {}
    
    public func makeButton() -> UIButton {
        return WhiteButton()
    }
    
    public func makeLabel() -> UILabel {
        return LightLabel()
    }
}
