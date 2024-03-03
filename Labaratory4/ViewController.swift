//
//  ViewController.swift
//  Labaratory4
//
//  Created by Sarvar Saidazov on 26.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lableExample: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickBtn(_ sender: UIButton) {
        lableExample.text = "I TOLD YA.NOT TO CLICK"
        lableExample.textColor = UIColor.red
        lableExample.font = UIFont.italicSystemFont(ofSize: 40.0)
    }
    
}
