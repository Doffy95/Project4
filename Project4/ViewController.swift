//
//  ViewController.swift
//  Project4
//
//  Created by ZuG on 9/24/22.
//

import UIKit

class ViewController: UITableViewController {
    
    var websites = ["apple.com", "hackingwithswift.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        title = "List Websites"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Table", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "Web") as? WebViewController {
            vc.startWebsiteIndex = indexPath.row
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}

