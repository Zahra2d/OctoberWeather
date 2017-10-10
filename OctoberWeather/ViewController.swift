//
//  ViewController.swift
//  OctoberWeather
//
//  Created by Zahraa Darwish on 10/10/2017.
//  Copyright © 2017 Zahraa Darwish. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    let cellId = "cell"
    let names: [String] = ["Hussein", "Zahraa", "Baby", "Pinky"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    
    }
    
    // MARK: - UITableViewDataSourceemehhr
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        cell?.textLabel?.text = names[indexPath.row]
        return cell!
    }


}

