//
//  ViewController.swift
//  BadrCompany
//
//  Created by Issam Alshamlat on 1/9/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userInfoView: UIView!
    @IBOutlet weak var userStatusImage: UIImageView!
    @IBOutlet weak var requestButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupUI()
        setupTableView()
        
    }

    private func setupUI () {
        profileImageView.layer.cornerRadius = 20
        profileImageView.layer.masksToBounds = true
        
        userInfoView.layer.cornerRadius = 20
        userInfoView.layer.masksToBounds = true
        userInfoView.dropShadow(color: UIColor.black , opacity: 0.6 , offSet: CGSize (width: 0, height: 0), radius: 5)
        
        requestButton.layer.cornerRadius = 10
        requestButton.layer.masksToBounds = true
        
        profileImageView.roundCorners(corners: [.bottomRight , .bottomLeft], radius: 20)
    }
    
    private func setupTableView () {
        
    }
    
}

extension ViewController : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reviewCell", for: indexPath) as! UserInfoTableViewCell
        return cell
    }
    
    
    
}
