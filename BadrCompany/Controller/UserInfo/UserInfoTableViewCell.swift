//
//  UserInfoTableViewCell.swift
//  BadrCompany
//
//  Created by Issam Alshamlat on 1/9/21.
//

import UIKit

class UserInfoTableViewCell: UITableViewCell {

    @IBOutlet weak var reviewUserImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        configure()
        // Initialization code
    }

    func configure () {
        reviewUserImage.layer.cornerRadius = 5
        reviewUserImage.layer.masksToBounds = true
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
