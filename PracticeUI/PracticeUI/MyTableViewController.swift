//
//  MyTableViewController.swift
//  PracticeUI
//
//  Created by t2023-m0026 on 11/22/23.
//

import UIKit

class MyTableViewController: UIViewController {

    @IBOutlet weak var MyTableView: UITableView!
    
    let friendNames: [String] = ["Henry","Leeo","Jay","Key"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MyTableView.backgroundColor = .blue
        MyTableView.delegate = self
        MyTableView.dataSource = self
    }
}
extension MyTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MyTableView.dequeueReusableCell(withIdentifier: "MyFirstCell", for: indexPath)
        cell.textLabel?.text = friendNames[indexPath.row]
        return cell
    }
    
}
