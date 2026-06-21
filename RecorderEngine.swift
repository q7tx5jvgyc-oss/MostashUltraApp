import Foundation

class RecorderEngine {

    static var events: [String] = []

    static func record(event: String) {
        events.append(event)
    }

    static func clear() {
        events.removeAll()
    }
}
