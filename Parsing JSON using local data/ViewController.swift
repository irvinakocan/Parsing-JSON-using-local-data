//
//  ViewController.swift
//  Parsing JSON using local data
//
//  Created by Macbook Air 2017 on 3. 2. 2024..
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        getUsers()
    }

    private func getUsers() {
        
        guard let path = Bundle.main.path(forResource: "usersApi", ofType: "txt") else {
            return
        }
        
        let url = URL(filePath: path)
        
        guard let data = try? Data(contentsOf: url) else {
            return
        }
                
        guard let json = try? JSONSerialization.jsonObject(with: data) else {
            return
        }
        print(json)
    }
}

