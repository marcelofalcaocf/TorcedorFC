//
//  TCViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import UIKit

class TCViewController: UIViewController {

    var tcScreen: TCScreen?
    
    override func loadView() {
        self.tcScreen = TCScreen()
        self.view = self.tcScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  self.title = "TC"
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
