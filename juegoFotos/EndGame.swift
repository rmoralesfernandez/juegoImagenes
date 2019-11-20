

import UIKit

class EndGame: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        mostrar()
    }
    
    @IBOutlet weak var WinImage: UIImageView!
    @IBOutlet weak var LostImage: UIImageView!
    
    func mostrar () {

        if i == numberPhotos && eresmonguer > 0{
            WinImage.image = #imageLiteral(resourceName: "win")
        } else if  eresmonguer == 0 {
            WinImage.image = #imageLiteral(resourceName: "lost")
        }
    }
    
   
    @IBAction func tryAgain(_ sender: Any) {
        imgGuardar.removeAll()
        eresmonguer = 6
        i = 0

    }
    
}
