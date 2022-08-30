//
//  HomeViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 25/08/22.
//

import UIKit

class HomeViewController: UIViewController {

    var homeScreen: HomeScreen = .init()
    let viewModel: ListaDeCampeonatoViewModel = .init()
    
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = self.homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.viewModel.delegate(delegate: self)
        self.homeScreen.configTableViewProtocols(delegate: self, dataSource: self)
        viewModel.getCampeonatos()
    }

}

extension HomeViewController: ListaDeCampeonatoViewModelDelegate {
    func success() {
        DispatchQueue.main.async {
            self.homeScreen.tableView.reloadData()
        }
    }
    func error() {
        print("Deu errado")
    }
}

extension HomeViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print("DELEGATE")
//    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 210
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRow
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell: ChampionshipsTableViewCell = tableView.dequeueReusableCell(withIdentifier: ChampionshipsTableViewCell.identifier, for: indexPath) as? ChampionshipsTableViewCell {
            cell.setUpCell(data: self.viewModel.campeonatos[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}


