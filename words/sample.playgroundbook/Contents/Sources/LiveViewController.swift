/*
See LICENSE folder for this sample’s licensing information.

Abstract:
Sample live view controller.
*/

import UIKit

// Note: To use view controllers in a story board with Swift Playgrounds,
// it currently requires the @objc declaration AND the compiled storyboard.

@objc(LiveViewController)
public class LiveViewController: UIViewController {
    
    public static func makeFromStoryboard() -> LiveViewController {
        let bundle = Bundle(for: LiveViewController.self)
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        return storyboard.instantiateInitialViewController() as! LiveViewController
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
    }

    public override var prefersStatusBarHidden: Bool {
        return true
    }
}

