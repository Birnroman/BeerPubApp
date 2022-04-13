import UIKit

class ViewController: UIViewController {

    @IBOutlet var spatenCountLabel: UILabel!
    @IBOutlet var carlsbergCountLabel: UILabel!
    @IBOutlet var heinekenCountLabel: UILabel!
    
    @IBOutlet var totalLabel: UILabel!
    
    @IBOutlet var spatenPriceLabel: UILabel!
    @IBOutlet var carlsbergPriceLabel: UILabel!
    @IBOutlet var heinekenPriceLabel: UILabel!
    
    @IBOutlet var minusSpatenButton: UIButton!
    @IBOutlet var plusSpatenButton: UIButton!
    @IBOutlet var minusCarlsbergButton: UIButton!
    @IBOutlet var plusCarksbergButton: UIButton!
    @IBOutlet var minusHeinekenButton: UIButton!
    @IBOutlet var plusHeinekenButton: UIButton!
    @IBOutlet var sellButton: UIButton!
    @IBOutlet var startDayButton: UIButton!
    @IBOutlet var endDayButton: UIButton!
    
    
    let cornerRadius: CGFloat = 8
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minusSpatenButton.layer.cornerRadius = cornerRadius
        plusSpatenButton.layer.cornerRadius = cornerRadius
        minusCarlsbergButton.layer.cornerRadius = cornerRadius
        plusCarksbergButton.layer.cornerRadius = cornerRadius
        minusSpatenButton.layer.cornerRadius = cornerRadius
        plusHeinekenButton.layer.cornerRadius = cornerRadius
        sellButton.layer.cornerRadius = cornerRadius
        startDayButton.layer.cornerRadius = cornerRadius
        endDayButton.layer.cornerRadius = cornerRadius
        
    }
    
    @IBAction func spatenMinusButtonPressed(_ sender: UIButton) {
    
        spatenCountLabel.text = Manager.shared.minus(count: spatenCountLabel.text!)
        totalLabel.text = "Total"

    }
    @IBAction func spatenPlusButtonPressed(_ sender: UIButton) {
        spatenCountLabel.text = Manager.shared.plus(count: spatenCountLabel.text!)
        totalLabel.text = "Total"

    }
    
    
    @IBAction func carlsbergMinusButtonPressed(_ sender: UIButton) {
        carlsbergCountLabel.text = Manager.shared.minus(count: carlsbergCountLabel.text!)
        totalLabel.text = "Total"

    }
    
    
    @IBAction func carlsbergPlusButtonPressed(_ sender: UIButton) {
        carlsbergCountLabel.text = Manager.shared.plus(count: carlsbergCountLabel.text!)
        totalLabel.text = "Total"

    }
    
    @IBAction func heinekenMinusButtonPressed(_ sender: UIButton) {
        heinekenCountLabel.text = Manager.shared.minus(count: heinekenCountLabel.text!)
        totalLabel.text = "Total"

    }
    
    @IBAction func heinekenPlusButtonPressed(_ sender: UIButton) {
        heinekenCountLabel.text = Manager.shared.plus(count: heinekenCountLabel.text!)
        totalLabel.text = "Total"

    }
    
    @IBAction func sellButtonPressed(_ sender: UIButton) {
        totalLabel.text = Manager.shared.sell(beer: Manager.shared.arrayOfBeers, count: [spatenCountLabel.text!, carlsbergCountLabel.text!, heinekenCountLabel.text!])
        
        spatenCountLabel.text = "0"
        carlsbergCountLabel.text = "0"
        heinekenCountLabel.text = "0"
    }
    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        Manager.shared.startDay()
        
        spatenCountLabel.text = "0"
        carlsbergCountLabel.text = "0"
        heinekenCountLabel.text = "0"
        totalLabel.text = "Total"

    }
    @IBAction func endButtonPressed(_ sender: UIButton) {
        totalLabel.text = Manager.shared.endDay()
        
        spatenCountLabel.text = "0"
        carlsbergCountLabel.text = "0"
        heinekenCountLabel.text = "0"
        
    }
    
    
    

}

