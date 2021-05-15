import UIKit

protocol 버튼 {
    var animation: Animation? { get set }
    func didTapButton(completion: () -> Void)
}

class 타이틀버튼: 버튼 {
    private var title: String
    private var backgroundImage: String
    
    init(title: String, backgroundImage: String) {
        self.title = title
        self.backgroundImage = backgroundImage
    }
    
    var animation: Animation?
    
    func didTapButton(completion: () -> Void) {
        
        animation?.animate()
        
        completion()
    }
}

class 아이콘버튼: 버튼 {
    private var image: String
    
    init(image: String) {
        self.image = image
    }
    
    var animation: Animation?
    
    func didTapButton(completion: () -> Void) {
        
        animation?.animate()
        
        completion()
    }
}

protocol Animation {
    func animate()
}

class HideAnimation: Animation {
    func animate() {
        /// 천천히 사라지는 애니메이션
    }
}

class ClickAnimation: Animation {
    func animate() {
        /// 눌리는 애니메이션
    }
}

func 일반모드test() {
    let button = 타이틀버튼(title: "이체", backgroundImage: "")
    button.animation = ClickAnimation()
    button.didTapButton {
        
    }
}

func 간편모드test() {
    let button = 타이틀버튼(title: "이체", backgroundImage: "")
    button.animation = HideAnimation()
    button.didTapButton {
        
    }
}
