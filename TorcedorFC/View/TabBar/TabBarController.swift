//
//  TabBarController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 26/08/22.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabBarController()
    }

    private func setupTabBarController() {
//        let viewHome = UINavigationController(rootViewController: HomeViewController())
//        let viewGames = UINavigationController(rootViewController: GamesViewController())
//        let viewTC = UINavigationController(rootViewController: TCViewController())
//        let viewMyFavorites = UINavigationController(rootViewController: MyFavoritesViewController())
//        let viewProfile = UINavigationController(rootViewController: ProfileViewController())
//
        self.setViewControllers([HomeViewController(), GamesViewController(), TCViewController(), MyFavoritesViewController(), ProfileViewController()], animated: false)
        self.tabBar.backgroundColor = .white
        self.tabBar.isTranslucent = false
        
        guard let items = tabBar.items else { return }
        
        items[0].title = "Camp"
        items[0].image = UIImage(systemName: "house")
        
        items[1].title = "Jogos"
        items[1].image = UIImage(systemName: "flag.2.crossed")
        
        items[2].title = "Características"
        items[2].image = UIImage(systemName: "list.bullet")
        
        items[3].title = "Favoritos"
        items[3].image = UIImage(systemName: "star.fill")
        
        items[4].title = "Perfil"
        items[4].image = UIImage(systemName: "person.fill")
    }
}
