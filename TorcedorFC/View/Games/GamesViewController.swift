//
//  GamesViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import UIKit

class GamesViewController: UIViewController {

    var gamesScreen: GamesScreen = .init()
    
    override func loadView() {
        self.gamesScreen = GamesScreen()
        self.view = self.gamesScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // self.title = "Games"
        // Do any additional setup after loading the view.
    }

}
