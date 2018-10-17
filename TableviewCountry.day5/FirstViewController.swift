//
//  ViewController.swift
//  TableviewCountry.day5
//
//  Created by Lam dai ka on 10/12/18.
//  Copyright © 2018 DucVu. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

  
    @IBOutlet weak var usernameTf: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    let database :Dictionary < String , String > = ["username" : "duc", "password" : "123"]
    
    @IBAction func loginBt(_ sender: Any) {
    
    
    let username = usernameTf.text
        let localUsername = database["username"]
        let password = passwordTF.text
        let localPassword = database["password"]
        
        guard username == localUsername else {
            let alert:UIAlertController = UIAlertController(title: "warning", message: "username's wrong"   , preferredStyle: UIAlertController.Style.alert)
            present(alert, animated: true, completion: nil)
            let btnOk = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(btnOk)
            return
        }
        guard password == localPassword else {
            let alert:UIAlertController = UIAlertController(title: "warning", message: "password's wrong", preferredStyle: UIAlertController.Style.alert)
            present(alert, animated: true, completion: nil)
            let btnOk:UIAlertAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(btnOk)
            return
            
        }
        
//        let countrytableview = storyboard?.instantiateViewController(withIdentifier: "country") as! countryViewController
//        self.navigationController?.pushViewController(countrytableview, animated: true)
    self.performSegue(withIdentifier: "showMain", sender: self)
        self.navigationItem.title = "Country"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

