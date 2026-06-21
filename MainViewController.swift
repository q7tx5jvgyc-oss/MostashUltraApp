import UIKit

class MainViewController: UIViewController {

    let floatingButton = FloatingButton()
    let panel = ControlPanel()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .darkGray

        setupFloatingButton()
        setupPanel()
    }

    func setupFloatingButton() {
        view.addSubview(floatingButton)

        floatingButton.addTarget(self, action: #selector(openPanel), for: .touchUpInside)
    }

    func setupPanel() {
        panel.frame = CGRect(x: 50, y: 150, width: 200, height: 120)
        panel.isHidden = true
        view.addSubview(panel)

        panel.startButton.addTarget(self, action: #selector(startPressed), for: .touchUpInside)
        panel.stopButton.addTarget(self, action: #selector(stopPressed), for: .touchUpInside)
    }

    @objc func openPanel() {
        panel.isHidden.toggle()
    }

    @objc func startPressed() {
        print("START SYSTEM")
    }

    @objc func stopPressed() {
        print("STOP SYSTEM")
    }
}
