import UIKit


class RegisterVC: UIViewController {

    @IBOutlet weak var gradientBottomView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("RegisterVC has been loaded...")
    }
    
    override var prefersStatusBarHidden: Bool {
       return true
   }

}
