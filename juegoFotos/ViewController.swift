

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ImageCenter: UIImageView!
    var images: [UIImage] = [#imageLiteral(resourceName: "cyndaquil"), #imageLiteral(resourceName: "metapod"), #imageLiteral(resourceName: "diglet"), #imageLiteral(resourceName: "zubat"), #imageLiteral(resourceName: "pikachu"), #imageLiteral(resourceName: "magikarp"), #imageLiteral(resourceName: "pidgey"), #imageLiteral(resourceName: "zapdos"), #imageLiteral(resourceName: "rattata")]
    
    var ordenAleatorio: [Int] = []

    @IBOutlet weak var play: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        Imgrandom()
        show()
        
    }
    
    func Imgrandom(){
        for i in 1...8 {
            ordenAleatorio.append(i)
        }
         ordenAleatorio.shuffle()
    }
    
    func show(){
        var i = 0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
            if i < 3 {
                self.ImageCenter.image = self.images[self.ordenAleatorio[i]]
            }
            i+=1
            if i == 3 {
                self.play.isHidden = false
            }
        })
    }


}

