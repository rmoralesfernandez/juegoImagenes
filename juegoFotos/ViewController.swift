

import UIKit

var imgGuardar: [UIImage] = []

class ViewController: UIViewController {
    
    @IBOutlet weak var ImageCenter: UIImageView!
    var images: [UIImage] = [#imageLiteral(resourceName: "cyndaquil"), #imageLiteral(resourceName: "metapod"), #imageLiteral(resourceName: "diglet"), #imageLiteral(resourceName: "mario"), #imageLiteral(resourceName: "pikachu"), #imageLiteral(resourceName: "magikarp"), #imageLiteral(resourceName: "pidgey"), #imageLiteral(resourceName: "zapdos"), #imageLiteral(resourceName: "rattata")]
    
    
    
    var ordenAleatorio: [Int] = []
    var numberPhotos: Int = 7

    override func viewDidLoad() {
        super.viewDidLoad()
        imgRandom()
        show()
        
    }
    
    func imgRandom(){
        for i in 0...8 {
            ordenAleatorio.append(i)
        }
         ordenAleatorio.shuffle()
    }
    
    func show(){
        var i = 0
        Timer.scheduledTimer(withTimeInterval: 1.5, repeats: true, block: { timer in
            if i < self.numberPhotos {
                self.ImageCenter.image = self.images[self.ordenAleatorio[i]]
                imgGuardar.append(self.ImageCenter.image!)
            }
            i+=1
            if i > self.numberPhotos {
                self.performSegue(withIdentifier: "ShowPass", sender: nil)
            }
        })
    }
}

