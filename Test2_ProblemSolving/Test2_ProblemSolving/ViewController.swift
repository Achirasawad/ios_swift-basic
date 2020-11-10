
import UIKit
import Alamofire

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    @IBOutlet weak var boxView: UIView!
    @IBOutlet weak var cameraButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPress(cameraButton: UIButton) {
        let vc = UIImagePickerController()
        vc.delegate = self
        vc.sourceType = .camera
        vc.cameraCaptureMode = .photo
        present(vc, animated: true, completion: nil)
    }
}

// step0 : import UIkit and Alamofire
// step1 : delete libAgentMate.a
// step2 : change Mach-O Type -> Bundle
// step3 : delete safe area 
