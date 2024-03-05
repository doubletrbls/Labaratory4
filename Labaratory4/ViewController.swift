//
//  ViewController.swift
//  Labaratory4
//
//  Created by Sarvar Saidazov on 26.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lableExample: UILabel!
    @IBOutlet weak var inputText: UITextField!
    
    
    var randNumber = Int.random(in: 0...100)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickBtn(_ sender: UIButton) {
        if let text = inputText.text, let intValue = Int(text) {
            if intValue == randNumber {
                lableExample.text = "U GUESSED"
                lableExample.textColor = UIColor.green
                lableExample.font = UIFont.boldSystemFont(ofSize: 24.0)
            } else if (intValue > randNumber) {
                lableExample.text = "LESS"
                lableExample.textColor = UIColor.red
                lableExample.font = UIFont.boldSystemFont(ofSize: 20.0)
            } else {
                lableExample.text = "MORE"
                lableExample.textColor = UIColor.red
                lableExample.font = UIFont.boldSystemFont(ofSize: 20.0)
            }
        } else {
            lableExample.text = "ENTER NUMBER PLEASE"
        }
    }
    
}
