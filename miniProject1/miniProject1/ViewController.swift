//
//  ViewController.swift
//  miniProject1
//
//  Created by Scholar on 7/27/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fact1: UILabel!
    @IBOutlet weak var fact2: UILabel!
    @IBOutlet weak var fact3: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fact1.isHidden = true
        fact2.isHidden = true
        fact3.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {
        fact1.isHidden = false
        fact2.isHidden = false
        fact3.isHidden = false
    }
    
}

