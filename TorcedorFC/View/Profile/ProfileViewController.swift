//
//  ProfileViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import UIKit

class ProfileViewController: UIViewController {

    var profileScreen: ProfileScreen = .init()
    
    override func loadView() {
        self.profileScreen = ProfileScreen()
        self.view = self.profileScreen
    }
    override func viewDidLoad() {
        super.viewDidLoad()
      //  self.title = "Profile"
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
