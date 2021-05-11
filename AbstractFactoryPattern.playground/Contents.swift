import UIKit

/**
  Simple 모드일 경우 : button (WhiteButton), label (LightLabel)
  일반 모드일 경우 :  button (GradationButton), label (BoldLabel)
 */

// MARK: - Client

var button: UIButton?
var label: UILabel?

enum Mode {
    case simple
    case normal
}

func before(mode: Mode) {
    if mode == .simple {
        button = WhiteButton()
        label = LightLabel()
    } else if mode == .normal {
        button = GradationButton()
        label = LightLabel()
    }
}

func after(mode: Mode) {
    var uiFactory: UIFactory?
    if mode == .simple {
        uiFactory = SimpleModeUIFactory()
    } else if mode == .normal {
        uiFactory = NormalModeUIFactory()
    }
    button = uiFactory?.makeButton()
    label = uiFactory?.makeLabel()
}
