import UIKit

class ControlPanel: UIView {

    var isOpen = false

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "MOSTASH PANEL"
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()

    let startButton = UIButton()
    let stopButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    func setup() {
        self.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        self.layer.cornerRadius = 12

        titleLabel.frame = CGRect(x: 0, y: 10, width: 200, height: 30)
        self.addSubview(titleLabel)

        startButton.frame = CGRect(x: 20, y: 60, width: 80, height: 40)
        startButton.setTitle("START", for: .normal)
        startButton.backgroundColor = .systemGreen

        stopButton.frame = CGRect(x: 110, y: 60, width: 80, height: 40)
        stopButton.setTitle("STOP", for: .normal)
        stopButton.backgroundColor = .systemRed

        self.addSubview(startButton)
        self.addSubview(stopButton)
    }
}
