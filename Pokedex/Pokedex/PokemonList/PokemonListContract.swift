//
//  PokemonListContract.swift
//  Pokedex
//
//  Created by treinamento on 15/06/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

protocol PokemonListPresenterType: UITableViewDataSource {
    var view: PokemonListViewType? { get set }
    func fetchData()
    func pokemon(at index: Int) -> Pokemon
}

protocol PokemonListInteractorInput {
    
    func fetchData()
    
}
protocol PokemonListInteractorOutput: AnyObject {
    
    func dataFetched(_ data: PokemonList)
    
}
