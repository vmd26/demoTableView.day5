//
//  DetailViewController.swift
//  TableviewCountry.day5
//
//  Created by Lam dai ka on 10/14/18.
//  Copyright © 2018 DucVu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate {
    @IBOutlet weak var searchText: UISearchBar!
    
    @IBOutlet weak var newsTbv: UITableView!
    
//    let newcars : [String] = ["car1", "car2", "car3", "car4", "car5"]
    var news : [String] = ["Thông tin đầu tiên về phiên bản M của xe BMW X5 M thế hệ mới",
                           "Honda tìm cách khắc phục lỗi động cơ trên CR-V 1.5L Turbo",
                           "Top 5 mẫu xe bán chạy nhất trong phân khúc sedan hạng C",
                           "Audi sắp thay logo mới",
                           "Ra mắt Volkswagen Passat NMS: Thoát mác xe Đức bình dân"]

    var xe: [car] = [
        car(image: "car1" , text: "Thông tin đầu tiên về phiên bản M của xe BMW X5 M thế hệ mới" ),
        car(image: "car2" , text: "Honda tìm cách khắc phục lỗi động cơ trên CR-V 1.5L Turbo"),
        car(image: "car3" , text: "Top 5 mẫu xe bán chạy nhất trong phân khúc sedan hạng C"),
        car(image: "car4" , text: "Audi sắp thay logo mới"),
        car(image: "car5" , text: "Ra mắt Volkswagen Passat NMS: Thoát mác xe Đức bình dân")
    ]
    var searchItem = [String]()
    var search = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTbv.delegate = self
        newsTbv.dataSource = self
        searchText.delegate = self
       
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if search {
           return searchItem.count
        } else {
        return xe.count
    }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  newsTbv.dequeueReusableCell(withIdentifier: "News", for: indexPath) as! NewsTableViewCell
        if search {
//            cell.newsLbl.text = searchItem[xe[indexPath.row].text]
            cell.newsLbl.text = searchItem[indexPath.row]
        } else {
        
        cell.newsImageview.image = UIImage(named: xe[indexPath.row].image)
        cell.newsLbl.text = xe[indexPath.row].text
        }
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let final = storyboard?.instantiateViewController(withIdentifier: "Final") as! FinalVC
        final.nameImage = xe[indexPath.row].image
        final.textview = xe[indexPath.row].text
        self.navigationController?.pushViewController(final, animated: true)
//        self.performSegue(withIdentifier: "End", sender: self)
        
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        searchItem = xe.filter({$0.prefix(searchText.count) == searchText })
        searchItem = news.filter({$0.prefix(searchText.count) == searchText})
       
        search = true
        newsTbv.reloadData()
    }
   
}
