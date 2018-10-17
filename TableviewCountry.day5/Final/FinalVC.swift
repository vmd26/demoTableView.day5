//
//  FinalVC.swift
//  TableviewCountry.day5
//
//  Created by Lam dai ka on 10/15/18.
//  Copyright © 2018 DucVu. All rights reserved.
//

import UIKit

class FinalVC: UIViewController {

    var nameImage: String!
    var textview:String!
    
    @IBOutlet weak var finalImage: UIImageView!
    @IBOutlet weak var newsTextview: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

      self.finalImage.image = UIImage(named: nameImage)!
      self.newsTextview.text = textview
    }
    

   

}
