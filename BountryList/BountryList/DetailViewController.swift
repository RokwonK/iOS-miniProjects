//
//  DetailViewController.swift
//  BountryList
//
//  Created by 김록원 on 2020/11/03.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imgView : UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var bountryLabel : UILabel!
    
    var name :String?
    var bountry : Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        if let name = self.name, let bountry = self.bountry {
            imgView.image = UIImage(named: "\(name).jpg")
            nameLabel.text = name
            bountryLabel.text = "\(bountry)"
        }
    }
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    

}
