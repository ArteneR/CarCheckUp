import Foundation
import UIKit


@IBDesignable
class RoundedCorners: UIButton {
    @IBInspectable var value: CGFloat = 0.0 {
        didSet {
            updateView()
        }
    }

    func updateView() {
        if (value < 1.0) {
            print("Rounded corners by percentage...")
            self.layer.cornerRadius = self.bounds.size.height * value
        }
        else {
            print("Rounded corners by value...")
            self.layer.cornerRadius = value
        }
    }
}
