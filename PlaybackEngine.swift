import Foundation

class PlaybackEngine {

    static var isRunning = false

    static func startPlayback(events: [String]) {
        isRunning = true

        for event in events {
            if !isRunning { break }
            print("Playing event: \(event)")
        }
    }

    static func stopPlayback() {
        isRunning = false
    }
}
