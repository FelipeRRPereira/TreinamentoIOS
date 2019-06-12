//
//  ViewController.swift
//  BitCoin
//
//  Created by treinamento on 01/06/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

@IBDesignable
class ViewController: UIViewController {

    private let detailsSegue = "show-details"

    @IBAction func touchDetails(_ sender: UIButton) {
        self.performSegue(withIdentifier: detailsSegue, sender: nil)
    }
    
}

