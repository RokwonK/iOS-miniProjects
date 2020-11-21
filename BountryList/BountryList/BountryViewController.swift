//
//  BountryViewController.swift
//  BountryList
//
//  Created by 김록원 on 2020/11/03.
//

import UIKit

class BountryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let nameList = ["brook", "chopper", "franky", "luffy", "nami", "robin", "sanji", "zoro"]
    let bountryList = [33000000, 50, 44000000, 300000000, 16000000, 80000000, 77000000, 120000000]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // DetailView에 데이터를 줌
        if segue.identifier == "showDetail" {
            let vc = segue.destination as? DetailViewController
            
            if let index = sender as? Int {
                vc?.name = nameList[index]
                vc?.bountry = bountryList[index]
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bountryList.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView
                .dequeueReusableCell(withIdentifier: "cell", for : indexPath) as? ListCell else {
            return UITableViewCell()
        }
        let img = UIImage(named: "\(nameList[indexPath.row]).jpg")
        cell.imgView.image = img
        cell.nameLabel.text = nameList[indexPath.row]
        cell.bountryLabel.text = "\(bountryList[indexPath.row])"
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
        performSegue(withIdentifier: "showDetail", sender: indexPath.row)
    }

}

class ListCell : UITableViewCell {
    @IBOutlet weak var imgView : UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    @IBOutlet weak var bountryLabel : UILabel!
}
