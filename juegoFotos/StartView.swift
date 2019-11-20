

import UIKit
var numberPhotos: Int = 0

class StartView: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func EasyGame(_ sender: Any) {
        numberPhotos = 4
    }
    
    @IBAction func MidGame(_ sender: Any) {
        numberPhotos = 6
    }
    
    @IBAction func HardGame(_ sender: Any) {
        numberPhotos = 8
    }
    
    
}
