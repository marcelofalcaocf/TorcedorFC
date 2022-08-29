//
//  TCScreen.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 29/08/22.
//

import UIKit
import DropDown

class TCScreen: UIView {

    lazy var backgrondOnTop: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 91/255, green: 172/255, blue: 160/255, alpha: 1.0)
        return view
    }()
    
    lazy var chooseTimeDropDown: DropDown = {
        let DP = DropDown()
        DP.dataSource = ["Sport", "Nautico", "Santa Cruz"]
        DP.backgroundColor = .gray
        return DP
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        
        self.configBackGroundOnTop()
        self.configChooseTimeDropDown()
    }
    
    func configBackGround() {
        self.backgroundColor = UIColor(red: 32/255, green: 43/255, blue: 59/255, alpha: 1.0)
    }
    
    func configSuperView() {
        self.addSubview(backgrondOnTop)
        self.backgrondOnTop.addSubview(chooseTimeDropDown)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configChooseTimeDropDown() {
        self.chooseTimeDropDown.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(45)
        }
    }
    
    func configBackGroundOnTop() {
        self.backgrondOnTop.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(30)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(45)
        }
    }
}
