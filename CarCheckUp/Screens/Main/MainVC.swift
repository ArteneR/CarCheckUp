import UIKit


class MainVC: UIViewController {

    @IBAction func unwindToMainScreen(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        print(sourceViewController)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("MainVC has been loaded...")
    }

    override var prefersStatusBarHidden: Bool {
       return true
    }
}

