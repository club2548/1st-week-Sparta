//
//  ViewController.swift
//  PracticeUI
//
//  Created by t2023-m0026 on 11/21/23.
//

import UIKit

struct Family {
    let myName : String
    let bestFriendName : String
    let nextFriendName : String
}

class ViewController: UIViewController {
    
    
    let friendNames: [String] = ["Henry", "Leeo", "Jay"]
    let KoreanNames: [String: String] = ["Henry": "헨리", "Leeo": "리오", "Jay": "제이"]
    var count: Int = 0
    let friend = Family(myName: "Henry",
                        bestFriendName: "Leeo",
                        nextFriendName: "Jay")

    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var bestFriendNameLabel: UILabel!
    @IBOutlet weak var nextFriendNameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }
    
    
    @IBAction func didTapButton(_ sender: Any) {
        NameLabel.text = friend.myName
        bestFriendNameLabel.text = friend.bestFriendName
        nextFriendNameLabel.text = friend.nextFriendName
        

    }
    

}

