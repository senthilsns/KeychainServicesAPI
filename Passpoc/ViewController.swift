//
//  ViewController.swift
//  Passpoc
//
//  Created by K, Senthil Kumar EX1 on 01/06/21.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        KeychainService.shared.deleteKychainItems()
        
        // Do any additional setup after loading the view.
        let  pass = "qwerty@1234"
        let acc = "User"
        
        KeychainService.shared.save(Password: pass, Account: acc)
        let cre = KeychainService.shared.retrivePassword(for: acc) ?? ""
        print(cre)
        
    }


}

