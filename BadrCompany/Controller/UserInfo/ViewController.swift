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
    @IBOutlet weak var requestButtonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupUI()
        setupTableView()
        fetchData()
    }

    private func setupUI () {
        userInfoView.layer.cornerRadius = 20
        userInfoView.layer.masksToBounds = true
        userInfoView.dropShadow(color: UIColor.black , opacity: 0.6 , offSet: CGSize (width: 0, height: 0), radius: 5)
        
        requestButtonView.layer.cornerRadius = 10
        requestButtonView.layer.masksToBounds = true
        
        profileImageView.roundCorners(corners: [.bottomRight , .bottomLeft], radius: 20)
        profileImageView.layer.masksToBounds = true
    }
    
    private func setupTableView () {
        
    }
    
    func fetchData () {
        self.view.isUserInteractionEnabled = false
        RequestManager.getUserInfo { (success, responseObject, error) in
            self.view.isUserInteractionEnabled = true
            if success {
                guard let response = responseObject as? [Dictionary<String, AnyObject>] else {
                    print("Dedode Error bookings")
                    return
                    // Parse data and reload table view
                }
            }else {

            }
        }
        
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
    
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 10.0
//    }
//    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let headerView = UIView()
//        headerView.backgroundColor = UIColor.clear
//        return headerView
//    }
    
}
