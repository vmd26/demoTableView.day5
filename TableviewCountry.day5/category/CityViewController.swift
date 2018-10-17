//
//  CityViewController.swift
//  TableviewCountry.day5
//
//  Created by Lam dai ka on 10/13/18.
//  Copyright © 2018 DucVu. All rights reserved.
//

import UIKit

class CityViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var detailCityColectionview: UICollectionView!
    
//    let icon: [String] = ["ICON", "Housing", "jobs", "personals", "money", "discussion"]
//    let namedetail : [String] = ["Country", "Housing", "Jobs", "Personal", "For Sale", "Discussion"]
    
    var city: [category] = [category(icon: "ICON", title: "Community"),
                          category(icon: "Housing", title: "Housing"),
                          category(icon: "jobs", title: "Jobs"),
                          category(icon: "personals", title: "Personals"),
                          category(icon: "money", title: "For Sale"),
                          category(icon: "discussion", title: "Discussion"),
                          
    ]
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return city.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = detailCityColectionview.dequeueReusableCell(withReuseIdentifier: "detailCitycollectionCell", for: indexPath) as! CityDetailCollectionViewCell
        cell.detailImageView.image = UIImage(named: city[indexPath.row].icon)
        cell.nameLbl.text = city[indexPath.row].title
        cell.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.9372549057, blue: 0.9568627477, alpha: 1)
        return cell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detail = storyboard?.instantiateViewController(withIdentifier: "Detail") as! DetailViewController
       
        
        self.navigationController?.pushViewController(detail, animated: true)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Category", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailCityColectionview.dataSource = self
        detailCityColectionview.delegate = self
        
    
       
    }
    

   
}
