//
//  ViewController.swift
//  Contacts
//
//  Created by Mahesh Prasad on 20/07/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    let names = ["Karna Raj",
    "Priya Smith",
    "Ranbir Sen",
    "ven"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(names[indexPath.row])
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}
