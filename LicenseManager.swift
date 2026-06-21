import Foundation

class LicenseManager {

    static let shared = LicenseManager()

    private let key = "MOSTASH_LICENSE"

    func isActivated() -> Bool {
        return UserDefaults.standard.bool(forKey: key)
    }

    func activate(code: String) -> Bool {

        let validCodes = [
            "MOSTASH7A9K1XQ3",
            "MOSTASH2B6M9LZ8"
        ]

        if validCodes.contains(code) {
            UserDefaults.standard.set(true, forKey: key)
            return true
        }

        return false
    }
}
