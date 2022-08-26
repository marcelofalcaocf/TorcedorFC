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

protocol TabelaViewModelDelegate: AnyObject {
    func tabelaSuccess()
    func tabelaError()
}

class ListaDeCampeonatoViewModel {
    
    private var delegate: ListaDeCampeonatoViewModelDelegate?
    private var tabelaDelegate: TabelaViewModelDelegate?
    
    private let service: ListaDeCampeonatoService = .init()
    private let tabelaService: TabelaService = .init()
    
    var campeonatos: [ListaDeCampeonato] = []
    var tabela: [TabelaBrasileiraoElement] = []
    
    public func delegate(delegate: ListaDeCampeonatoViewModelDelegate) {
        self.delegate = delegate
    }
    
    public func tabelaDelegate(delegate: TabelaViewModelDelegate) {
        self.tabelaDelegate = delegate
    }
    
    var numberOfRow: Int {
        return campeonatos.count
    }
    
    func getCampeonatos() {
        service.getAllListaDeCampeonatos { success, error in
            if let success = success {
                self.campeonatos = success
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
    
    func getTabela() {
        tabelaService.getAllListaDeCampeonatos { success, error in
            if let success = success {
                self.tabela = success
                self.tabelaDelegate?.tabelaSuccess()
            } else {
                self.tabelaDelegate?.tabelaError()
            }

        }
    }
}
