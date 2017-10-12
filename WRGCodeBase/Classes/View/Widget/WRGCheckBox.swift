//
//  WRGCheckBox.swift
//  FBSnapshotTestCase
//
//  Created by Mujeeb R. O on 09/10/17.
//

import UIKit

class WRGCheckBox: UIButton {

    let selectedImage = UIImage(named: "ic_check_selected")
    let unSelectedImage = UIImage(named: "ic_check_unselected")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initiate()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initiate()
    }
    
    
    func initiate() {
        
    }
    

}
