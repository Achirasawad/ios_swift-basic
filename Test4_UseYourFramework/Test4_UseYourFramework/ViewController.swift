
import UIKit
import SimpleSwiftFramework

class ViewController: UIViewController {
    
    @IBOutlet weak var messageTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didPressAction(_ sender: UIButton) {
        let CallingFrameworkFunction = SimpleSwiftFramework()
        CallingFrameworkFunction.alert(message: messageTextfield.text)
    }
}

