//
//  CupPhasesTableViewCell.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 09/09/22.
//

import UIKit

class CupPhasesTableViewCell: UITableViewCell {

    static let identifier: String = "CupPhasesTableViewCell"

    lazy var detailCupPhasesView: CupPhasesScreen = {
        let view = CupPhasesScreen()
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.configSuperView()
        
        configDetailCupPhasesView()
    }
    
    func configSuperView() {
        self.contentView.addSubview(self.detailCupPhasesView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configDetailCupPhasesView() {
        self.detailCupPhasesView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
