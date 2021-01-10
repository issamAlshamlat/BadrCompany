//
//  BottomBar.swift
//  BadrCompany
//
//  Created by Issam Alshamlat on 1/10/21.
//

import Foundation
import UIKit

class BottomBar : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupUI()
    }
    
    func setupUI () {
        self.view.layer.cornerRadius = 20
        self.view.layer.masksToBounds = true
    }

}
