//
//  ViewController.swift
//  OctoberWeather
//
//  Created by Zahraa Darwish on 10/10/2017.
//  Copyright © 2017 Zahraa Darwish. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    let cellId = "cell"
    let names: [String] = ["Hussein", "Zahraa", "Baby", "Pinky"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
    
    }
    
    //MARK: - UITABLEVIEW
    
    // MARK: UITableViewDataSourceemehhr
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        cell?.textLabel?.text = names[indexPath.row]
        return cell!
    }
    
    
    // MARK: UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    


}

