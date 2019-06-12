//
//  ViewController.swift
//  Coffee
//
//  Created by treinamento on 03/06/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

@IBDesignable
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private let loginSegue = "show-login"

    @IBAction func touchLogin(_ sender: Any) {
        self.performSegue(withIdentifier: loginSegue, sender: nil)
    }
    
}

