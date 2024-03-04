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
    
    
    let randNumber = Int.random(in: 0...100)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickBtn(_ sender: UIButton) {
        if let text = inputText.text, let intValue = Int(text) {
            if intValue == randNumber {
                lableExample.text = "U GUESSED"
            } else if (intValue > randNumber) {
                lableExample.text = "LESS"
            } else {
                lableExample.text = "MORE"
            }
        } else {
            lableExample.text = "ENTER NUMBER PLEASE"
        }
    }
    
}
