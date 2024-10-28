//
//  ViewController.swift
//  pagenation
//
//  Created by Amit rai on 10/09/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource , UITabBarDelegate, UITableViewDelegate {
   
    
   
    
    @IBOutlet weak var tableview: UITableView!
    var number  = [1]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableview.dataSource = self
        tableview.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return number.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  =  tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.label.text =  "\(number[indexPath.row])"
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row ==  number.count -  1 {
            for n in  0...9 {
                number.append(number.last! + 1 )
            }
            tableview.reloadData()
        }
    }
}

