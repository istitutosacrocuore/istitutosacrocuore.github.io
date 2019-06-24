import UIKit
import PlaygroundSupport
import GameplayKit

public func _setup() {
    let viewController = UIViewController()
    viewController.view = Canvas.shared.backingView
    PlaygroundPage.current.liveView = viewController
}
