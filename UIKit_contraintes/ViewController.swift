import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var text: UILabel!

    var image: Image = .one
    
    var imageCount = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        text.adjustsFontSizeToFitWidth = true
        refresh()
        
        img.image = UIImage(named: image.imageName)
        text.text = image.imageLabel
        
    }
    
    func refresh() {
        switch imageCount {
        case 1:
            image = .one
        case 2:
            image = .two
        case 3:
            image = .three
        case 4:
            image = .four
        default:
            image = .one
        }
        
        if imageCount == 1 {
            image = .one
        } else if imageCount == 2 {
            image = .two
        } else if imageCount == 3 {
            image = .three
        } else {
            image = .four
        }
        
        img.image = UIImage(named: image.imageName)
        text.text = image.imageLabel
    }

    
    @IBAction func NextAction(_ sender: Any) {
        if imageCount < 4 {
            imageCount += 1
        } else {
            imageCount = 1
        }
        refresh()
    }
    
    @IBAction func previousAction(_ sender: Any) {
        if imageCount > 1 {
            imageCount -= 1
        } else {
            imageCount = 4
        }
        refresh()
    }
}

