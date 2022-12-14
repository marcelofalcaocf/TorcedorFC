//
//  GameTableScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 31/08/22.
//

import UIKit

protocol GameTableScreenProtocol: AnyObject {
    func actionBackButton()
}

class GameTableScreen: UIView {

    private weak var delegate: GameTableScreenProtocol?
    
    func delegate(delegate: GameTableScreenProtocol?) {
        self.delegate = delegate
    }
    
    lazy var backgrondOnTop: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0)
        return view
    }()
    
    lazy var backAppButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "botaoVoltar"), for: .normal)
        button.addTarget(self, action: #selector(self.tappeBackButton), for: .touchUpInside)
        return button
    }()
    
    lazy var logoAppImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logoLogin")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var tableLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
        label.font = UIFont.boldSystemFont(ofSize: 32)
        label.text = "Tabela:"
        return label
    }()
    
    lazy var seasonLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 20)
        label.text = "Temporada 2022:"
        return label
    }()
    
    lazy var gamesTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .darkGray
        tableView.layer.cornerRadius = 10
        tableView.register(DetailChampsTableViewCell.self, forCellReuseIdentifier: DetailChampsTableViewCell.identifier)
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        self.setUpContraints()
    }
    
    func configBackGround() {
        self.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
    }
    
    private func configSuperView() {
        self.addSubview(self.backgrondOnTop)
        self.backgrondOnTop.addSubview(self.backAppButton)
        self.backgrondOnTop.addSubview(self.logoAppImageView)
        self.backgrondOnTop.addSubview(self.tableLabel)
        self.addSubview(self.seasonLabel)
        self.addSubview(self.gamesTableView)
        
    }
    
    public func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.gamesTableView.delegate = delegate
        self.gamesTableView.dataSource = dataSource
    }
    
    @objc private func tappeBackButton() {
        self.delegate?.actionBackButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpContraints() {
        NSLayoutConstraint.activate([
            
            self.backgrondOnTop.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            self.backgrondOnTop.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            self.backgrondOnTop.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            self.backgrondOnTop.heightAnchor.constraint(equalToConstant: 150),
            
            self.backAppButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            self.backAppButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.backAppButton.heightAnchor.constraint(equalToConstant: 20),
            self.backAppButton.widthAnchor.constraint(equalToConstant: 20),
            
            
            self.logoAppImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            self.logoAppImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            self.logoAppImageView.widthAnchor.constraint(equalToConstant: 100),
            self.logoAppImageView.heightAnchor.constraint(equalToConstant: 100),
            
            
            self.tableLabel.topAnchor.constraint(equalTo: self.backgrondOnTop.bottomAnchor, constant: -45),
            self.tableLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.tableLabel.heightAnchor.constraint(equalToConstant: 45),
            
            
            self.seasonLabel.topAnchor.constraint(equalTo: self.backgrondOnTop.bottomAnchor, constant: 10),
            self.seasonLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.seasonLabel.heightAnchor.constraint(equalToConstant: 30),
            
            
            self.gamesTableView.topAnchor.constraint(equalTo: self.seasonLabel.bottomAnchor, constant: 5),
            self.gamesTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.gamesTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.gamesTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }
}
