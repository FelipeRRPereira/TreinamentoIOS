//
//  FavoriteTableViewCell.swift
//  Pokedex
//
//  Created by treinamento on 19/06/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

class FavoriteTableViewCell: UICollectionViewCell {
    
    @IBOutlet var gradientView: GradientView!
    
    @IBOutlet weak var pictureImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var strongestStatName: UILabel!
    @IBOutlet weak var strongestStatValue: UILabel!
    
    @IBOutlet weak var primaryTypeImageView: UIImageView!
    @IBOutlet weak var secondaryTypeImageView: UIImageView!
    
    func config(with model: Pokemon) {
        self.pictureImageView.loadImage(from: model.image)
        self.nameLabel.text = model.name.capitalized
        self.strongestStatName.text = model.strongestStat?.name.uppercased()
        if let strongest = model.strongestStat?.value {
            self.strongestStatValue.text = String(strongest)
        }
        
        self.primaryTypeImageView.image = model.types.first?.icon
        self.primaryTypeImageView.backgroundColor = model.types.first?.color
        
        if model.types.count > 1 {
            secondaryTypeImageView.image = model.types[1].icon
            secondaryTypeImageView.backgroundColor = model.types[1].color
            secondaryTypeImageView.isHidden = false
        } else {
            secondaryTypeImageView.isHidden = true
        }
        
        self.gradientView.startColor = model.types.first?.color ?? .black
        self.gradientView.endColor = model.types.first?.color?.lighter() ?? .white
        
    }
    
}
