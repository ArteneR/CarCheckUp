import UIKit


class RegisterVC: UIViewController {

    @IBOutlet weak var gradientBottomView: UIView!
    
    @IBAction func unwindToRegisterScreen(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        print(sourceViewController)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("RegisterVC has been loaded...")
    }
    
    override var prefersStatusBarHidden: Bool {
       return true
    }

}
