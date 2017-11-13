//
//  ViewController.swift
//  iOS11Showtime
//
//  Created by apple on 2017/11/12.
//  Copyright © 2017年 Xu. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    var dataSource = DataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension ViewController {
    
    // MARK: UITableViewDataSource
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.examples.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        let sample = dataSource.examples[indexPath.row]
        cell.textLabel?.text = sample.title
        cell.detailTextLabel?.text = sample.description
        
        return cell
    }
    
    // MARK: UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let sample = dataSource.examples[indexPath.row]
        if let controller = sample.controller {
            navigationController?.pushViewController(controller, animated: true)
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

