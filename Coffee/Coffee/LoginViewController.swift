//
//  LoginViewController.swift
//  Coffee
//
//  Created by treinamento on 07/06/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

@IBDesignable
class LoginViewController: UIViewController {
    
    private let mapSegue = "show-map"
    
    @IBAction func touchLogin(_ sender: Any) {
        self.performSegue(withIdentifier: mapSegue, sender: nil)
    }

}
