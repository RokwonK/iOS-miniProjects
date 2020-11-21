//
//  BountyInfo.swift
//  BountryList
//
//  Created by 김록원 on 2020/11/21.
//

import UIKit

struct BountyInfo {
    let name : String
    let bounty : Int
    
    var image : UIImage? {
        return UIImage(named: "\(name).jpg")
    }
    
    init(name : String, bounty : Int) {
        self.name = name
        self.bounty = bounty
    }
}
