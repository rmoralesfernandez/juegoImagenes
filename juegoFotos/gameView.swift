import UIKit

var i = 0
var eresmonguer = 10

class gameView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var images: [UIImage] = [#imageLiteral(resourceName: "cyndaquil"), #imageLiteral(resourceName: "metapod"), #imageLiteral(resourceName: "diglet"), #imageLiteral(resourceName: "mario"), #imageLiteral(resourceName: "pikachu"), #imageLiteral(resourceName: "magikarp"), #imageLiteral(resourceName: "pidgey"), #imageLiteral(resourceName: "zapdos"), #imageLiteral(resourceName: "rattata")]

    @IBOutlet weak var Micelda: UIImageView!
    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var NumSelect: UILabel!
    @IBOutlet weak var winView: UILabel!
    @IBOutlet weak var lostVieh: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView.dataSource = self
        CollectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = CollectionView.dequeueReusableCell(withReuseIdentifier: "CeldaC", for:
            indexPath) as! MiCelda
        celda.imagen.image = images[indexPath.row]
        return celda
    }

    
    internal func collectionView(_ collectionview: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        NumSelect.text = String(indexPath.row+1)
        
        if images[indexPath.row] == imgGuardar[0]{
            imgGuardar.remove(at: 0)
            i += 1
            images.remove(at: indexPath.row)
            collectionview.reloadData()
        } else {
            eresmonguer -= 1
        }
        
        if i == numberPhotos && eresmonguer > 0 || eresmonguer == 0{
            performSegue(withIdentifier: "End", sender: nil)
            
        }
    }
    
    func finish() {
        dismiss(animated: true, completion: nil)
    }
    
}
