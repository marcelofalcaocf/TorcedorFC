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
        
        gameTableScreen.delegate(delegate: self)
        viewModel.getTabela(id: campeonatoId)
    }
}

extension CupDetailViewController: CupDetailScreenProtocol {
    func actionBackButton() {
        navigationController?.popViewController(animated: false)
    }    
}
