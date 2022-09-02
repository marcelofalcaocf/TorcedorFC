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
