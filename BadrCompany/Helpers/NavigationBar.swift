//
//  NavigationBar.swift
//  BadrCompany
//
//  Created by Issam Alshamlat on 1/10/21.
//

import Foundation
import UIKit

class NavigationBar : UIViewController {
    
    @IBOutlet weak var navigationPopUpView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupUI()
    }
    
    
    func setupUI () {
        navigationPopUpView.roundCorners(corners: [.bottomLeft , .bottomRight , .topLeft], radius: 20)
        navigationPopUpView.isHidden = true
    }
    
    @IBAction func showHideNavigation(_ sender: UIButton) {
        navigationPopUpView.isHidden = !navigationPopUpView.isHidden
    }
    
    
}
