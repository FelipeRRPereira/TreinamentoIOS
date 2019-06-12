//
//  MovesListViewController.swift
//  Pokedex
//
//  Created by treinamento on 09/06/19.
//  Copyright © 2019 CWI Software. All rights reserved.
//

import UIKit

class MoveListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let requestMaker = RequestMaker()
    
    var moveList = MoveList()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.configTable()
        self.fetchData()
    }
    
    private func configTable() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

}

extension MoveListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.moveList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "move", for: indexPath)
        
        if let moveCell = cell as? MoveTableViewCell {
            moveCell.config(with: self.moveList[indexPath.row])
        }
        
        return cell
        
    }
    
}

extension MoveListViewController: UITableViewDelegate {
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        let storyboard = self.storyboard
//
//
//    }
    
}

extension MoveListViewController {
    
    func fetchData() {
        RequestMaker().make(withEndpoint: .moves) {
            (moveList: MoveList) in

            self.moveList = moveList

            DispatchQueue.main.async {
                self.tableView.reloadData()
            }

        }
    }
    
}
