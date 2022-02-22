import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        if let backgroundImage = UIImage(named: "bg_pattern.png") {
            self.view.backgroundColor = UIColor(patternImage: backgroundImage)
        }
        
        super.viewDidLoad()
    }

}

