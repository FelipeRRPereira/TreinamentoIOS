//
//  MoveTableViewCell.swift
//  Pokedex
//
//  Created by treinamento on 10/06/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

class MoveTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var typeImageView: UIImageView!
    
    func config(with model: Move) {
        self.nameLabel.text = model.name.capitalized
        self.typeImageView.image = model.type.icon
        
        DispatchQueue.main.async {
            self.typeImageView.backgroundColor = model.type.color
        }
    }

}
