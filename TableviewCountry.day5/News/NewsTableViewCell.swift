//
//  NewsTableViewCell.swift
//  TableviewCountry.day5
//
//  Created by Lam dai ka on 10/14/18.
//  Copyright © 2018 DucVu. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {

    @IBOutlet weak var newsLbl: UILabel!
    @IBOutlet weak var newsImageview: UIImageView!
    @IBOutlet weak var hourLbl: UILabel!
    
    var newsImage: String!
    var newsLable: String!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
