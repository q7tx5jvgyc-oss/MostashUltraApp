import Foundation
import UIKit

class VIPSystem {

    static let shared = VIPSystem()

    private let key = "VIP_ACTIVE"

    func isVIP() -> Bool {
        return UserDefaults.standard.bool(forKey: key)
    }

    func activate(code: String) -> Bool {

        let valid = [
            "MOSTASH7A9K1XQ3",
            "MOSTASH2B6M9LZ8",
            "MOSTASH8C1V4RT5"
        ]

        if valid.contains(code) {
            UserDefaults.standard.set(true, forKey: key)
            return true
        }

        return false
    }

    func deactivate() {
        UserDefaults.standard.set(false, forKey: key)
    }
}
