import Foundation

class SettingsManager {

    static let shared = SettingsManager()

    private let speedKey = "SPEED_VALUE"

    func setSpeed(_ value: Float) {
        UserDefaults.standard.set(value, forKey: speedKey)
    }

    func getSpeed() -> Float {
        return UserDefaults.standard.float(forKey: speedKey)
    }
}
