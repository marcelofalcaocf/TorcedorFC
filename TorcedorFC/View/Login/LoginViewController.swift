//
//  ViewController.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 24/08/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    var loginScreen: LoginScreen?
    let viewModel: ListaDeCampeonatoViewModel = .init()
    
    override func loadView() {
        self.loginScreen = LoginScreen()
        self.view = self.loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loginScreen?.delegate(delegate: self)
    
        viewModel.delegate(delegate: self)
        viewModel.tabelaDelegate(delegate: self)
        
        viewModel.getCampeonatos()
        viewModel.getTabela()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
}

extension LoginViewController: LoginScreenProtocol {
    func actionLoginButton() {
        let vc: HomeViewController = HomeViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func actionForgotPasswordButton() {
        print("está funcionando")
    }
    
    func actionLoginGoogleButton() {
        print("está funcionando")
    }
    
    func actionLoginFacebookButton() {
        print("está funcionando")
    }
    
    func actionRegisterPasswordButton() {
        print("está funcionando")
    }
    
    
}


extension LoginViewController: ListaDeCampeonatoViewModelDelegate {
    func success() {
        print("Deu bom!")
    }
    
    func error() {
        print("Deu ruim")
    }
}

extension LoginViewController: TabelaViewModelDelegate {
    func tabelaSuccess() {
        print("Deu bom na tabela")
    }
    
    func tabelaError() {
        print("Deu ruim na tabela")
    }
}
