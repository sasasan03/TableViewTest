//
//  ViewController.swift
//  TableViewStudy
//
//  Created by sako0602 on 2023/06/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var fruits = ["りんご","レモン","もも"]
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return fruits.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//
//        cell.textLabel?.text = fruits[indexPath.row]
//
//        return cell
//    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
//        cell.textLabel?.text = fruits[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = fruits[indexPath.row]
        cell.contentConfiguration = content
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return fruits.count
//    }
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
//
//        cell.textLabel?.text = fruits[indexPath.row]
//
//        return cell
//    }
//    func tableView(_ tableView: UITableView, didSwlectRowAt indexPath: IndexPath) {
//        fruits[indexPath.row].append("*")
//        tableView.reloadRows(at: [indexPath], with: .automatic )
//    }
}
 
//extension ViewController: UITabBarDelegate {
//    func tableView(_ tableView: UITableView, didSwlectRowAt indexPath: IndexPath) {
//        fruits[indexPath.row].append("*")
//        tableView.reloadRows(at: [indexPath], with: .automatic )
//    }
//}
