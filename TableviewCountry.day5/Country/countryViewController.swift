//
//  countryViewController.swift
//  TableviewCountry.day5
//
//  Created by Lam dai ka on 10/13/18.
//  Copyright © 2018 DucVu. All rights reserved.
//

import UIKit

class countryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {
    @IBOutlet weak var search: UISearchBar!
    @IBOutlet weak var countryTBV: UITableView!
    
    let city:[String] = ["Ahmedabad", "Bangalore", "Bhubbaneswar", "Chandigarh", "Chenai", "Delhi", "Goa", "Hydrabad", "Indore"]
    
    var searchCity = [String]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countryTBV.delegate = self
        countryTBV.dataSource = self
        search.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
           return searchCity.count
        } else {
            return city.count
        }
    }
       
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL", for: indexPath) as! cityTableViewCell
        if searching {
            cell.textLabel?.text = searchCity[indexPath.row]
        } else {
            cell.textLabel?.text = city[indexPath.row]
        }
        
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "India"
    }
   
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchCity = city.filter({$0.prefix(searchText.count) == searchText})
        searching = true
        countryTBV.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cityView = storyboard?.instantiateViewController(withIdentifier: "CityView") as! CityViewController
        self.navigationController?.pushViewController(cityView, animated: true)
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "Country", style: UIBarButtonItem.Style.plain, target: nil, action: nil)
    }

}
