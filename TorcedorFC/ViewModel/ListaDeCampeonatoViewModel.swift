//
//  ListaDeCampeonatoViewModel.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/08/22.
//

import Foundation

protocol ListaDeCampeonatoViewModelDelegate: AnyObject {
    func success()
    func error()
}

class ListaDeCampeonatoViewModel {
    
    private var delegate: ListaDeCampeonatoViewModelDelegate?
    private let service: ListaDeCampeonatoService = .init()
    var campeonatos: [ListaDeCampeonato] = []
    var filterCampeonatos: [ListaDeCampeonato] = []
    
    public func delegate(delegate: ListaDeCampeonatoViewModelDelegate) {
        self.delegate = delegate
    }
    
    var numberOfRow: Int {
        return filterCampeonatos.count
    }
    
    func getCampeonatos() {
        service.getAllListaDeCampeonatos { success, error in
            if let success = success {
                self.campeonatos = success
                self.filterCampeonatos = self.campeonatos.filter { $0.campeonatoID == 10 || $0.campeonatoID == 2 }
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
    
    func getCampeonatoId(indexPath: Int) -> Int {
        switch indexPath {
            
        case 0:
            return 10
        
        default:
            return 2
        }
    }
}
