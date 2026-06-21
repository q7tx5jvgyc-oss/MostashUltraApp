import Foundation
import CoreGraphics

struct Target {
    var id: Int
    var position: CGPoint
    var isActive: Bool
}

class TargetManager {

    static var targets: [Target] = []

    static let maxTargets = 10

    static func addTarget(point: CGPoint) {

        guard targets.count < maxTargets else { return }

        let newTarget = Target(
            id: targets.count + 1,
            position: point,
            isActive: false
        )

        targets.append(newTarget)
    }

    static func toggleTarget(id: Int) {

        if let index = targets.firstIndex(where: { $0.id == id }) {
            targets[index].isActive.toggle()
        }
    }

    static func removeAll() {
        targets.removeAll()
    }
}
