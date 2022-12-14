//
//  CupDetailViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 08/09/22.
//

import UIKit

class CupDetailViewController: UIViewController {

    var gameTableScreen: CupDetailScreen = .init()
    var viewModel: GameTableViewModel = .init()
    var campeonatoId: Int = 0
    
    override func loadView() {
        self.gameTableScreen = CupDetailScreen()
        self.view = self.gameTableScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameTableScreen.configTableViewProtocols(delegate: self, dataSource: self)
        gameTableScreen.delegate(delegate: self)
        viewModel.getTabela(id: campeonatoId)
    }
}

extension CupDetailViewController: CupDetailScreenProtocol {
    func actionBackButton() {
        navigationController?.popViewController(animated: false)
    }    
}

extension CupDetailViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}

extension CupDetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: CupPhasesTableViewCell.identifier, for: indexPath) as? CupPhasesTableViewCell {
            return cell
        }
        return UITableViewCell()
    }
}
