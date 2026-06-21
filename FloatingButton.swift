import UIKit

class FloatingButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        self.frame = CGRect(x: 100, y: 200, width: 60, height: 60)
        self.backgroundColor = .systemBlue
        self.setTitle("M", for: .normal)
        self.layer.cornerRadius = 30
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let point = touch.location(in: self.superview)
            self.center = point
        }
    }
}
