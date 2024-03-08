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
    
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var atempts: UILabel!
    var numberOfAtempts = 3
    
    var randNumber = Int.random(in: 0...10)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickBtn(_ sender: UIButton) {
        if numberOfAtempts > 0 {
            if let text = inputText.text, let intValue = Int(text) {
                if intValue == randNumber {
                    lableExample.text = "U GUESSED"
                    lableExample.textColor = UIColor.green
                    lableExample.font = UIFont.boldSystemFont(ofSize: 24.0)
                } else if (intValue > randNumber) {
                    lableExample.text = "LESS"
                    lableExample.textColor = UIColor.red
                    lableExample.font = UIFont.boldSystemFont(ofSize: 20.0)
                    numberOfAtempts-=1
                    atempts.text = String(numberOfAtempts)
                } else {
                    lableExample.text = "MORE"
                    lableExample.textColor = UIColor.red
                    lableExample.font = UIFont.boldSystemFont(ofSize: 20.0)
                    numberOfAtempts-=1
                    atempts.text = String(numberOfAtempts)
                }
            } else {
                lableExample.text = "ENTER NUMBER PLEASE"
            }
        } else {
            lableExample.text = "YOUR ATEMPS IS GONE"
            btn.isEnabled = false
        }
    
    }
    
    
    @IBAction func restartGame(_ sender: UIButton) {
        randNumber = Int.random(in: 0...10)
        lableExample.text = "GUESS THE NUMBER 0..10"
        btn.isEnabled = true
        numberOfAtempts = 3
        atempts.text = String(numberOfAtempts)
    }
    
    
}
