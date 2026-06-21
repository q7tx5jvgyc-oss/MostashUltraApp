import Foundation

class EventQueue {

    static var queue: [String] = []

    static func add(_ event: String) {
        queue.append(event)
    }

    static func next() -> String? {
        if queue.isEmpty { return nil }
        return queue.removeFirst()
    }
}
