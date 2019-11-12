import Foundation
import UIKit


@IBDesignable
class GradientView: UIView {
    @IBInspectable var firstColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var secondColor: UIColor = UIColor.clear {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var firstColorOffset: Double = 0.0 {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var secondColorOffset: Double = 1.0 {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var startPointX: Double = 0.0 {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var startPointY: Double = 0.0 {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var endPointX: Double = 0.0 {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var endPointY: Double = 1.0 {
        didSet {
            updateView()
        }
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
       }
    }
    
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [firstColor, secondColor].map{$0.cgColor}
        layer.locations = [firstColorOffset as! NSNumber, secondColorOffset as! NSNumber]
        layer.startPoint = CGPoint(x: startPointX, y: startPointY)
        layer.endPoint = CGPoint(x: endPointX, y: endPointY)
    }
}
