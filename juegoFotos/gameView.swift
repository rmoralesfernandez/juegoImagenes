import UIKit

class gameView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var images: [UIImage] = [#imageLiteral(resourceName: "cyndaquil"), #imageLiteral(resourceName: "metapod"), #imageLiteral(resourceName: "diglet"), #imageLiteral(resourceName: "mario"), #imageLiteral(resourceName: "pikachu"), #imageLiteral(resourceName: "magikarp"), #imageLiteral(resourceName: "pidgey"), #imageLiteral(resourceName: "zapdos"), #imageLiteral(resourceName: "rattata")]

    @IBOutlet weak var Micelda: UIImageView!
    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var NumSelect: UILabel!
    
    
    
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
    
    @IBAction func GoBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    internal func collectionView(_ collectionview: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(indexPath.row)
        NumSelect.text = String(indexPath.row+1)
        print(imgGuardar)
    }
    
    
}
