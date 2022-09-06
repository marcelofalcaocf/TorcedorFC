//
//  GamesDetailViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 02/09/22.
//

import UIKit

class GamesDetailViewController: UIViewController {

    var gamesDetailScreen: GamesDetailScreen = .init()
    
    override func loadView() {
        self.gamesDetailScreen = GamesDetailScreen()
        self.view = self.gamesDetailScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gamesDetailScreen.delegate(delegate: self)
        // Do any additional setup after loading the view.
    }
}

extension GamesDetailViewController: GameDetailScreenProtocol {
    func actionBackButton() {
        navigationController?.popViewController(animated: false)
    }
}
