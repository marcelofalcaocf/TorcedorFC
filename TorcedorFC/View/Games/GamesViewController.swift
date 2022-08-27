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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
