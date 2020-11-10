
import Foundation
import UIKit

extension UIViewController{
    
    public func simpleAlert(message: String?) {
        let alert = UIAlertController(title: "Alert from simpleView", message: "Your message is \"\(message)\"", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
