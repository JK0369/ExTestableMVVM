//
//  LoginVC.swift
//  ExTestableMVVM
//
//  Created by 김종권 on 2021/11/25.
//

import UIKit
import RxSwift
import RxCocoa

final class LoginVC: BaseViewController, ViewControllerInit {
    
    var viewModel: LoginVM!
    var router: LoginRouter!
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("로그인", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.blue, for: .highlighted)
        return button
    }()
    
    override func configure() {
        super.configure()
        router = LoginRouter(viewController: self)
    }
    
    func setupViews() {

    }
    
    func addSubviews() {
        view.addSubview(loginButton)
    }
    
    func makeConstraints() {
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func bindInputs() {
        loginButton.rx.tap
            .asDriver()
            .drive(onNext: { [weak self] in
                self?.viewModel.didTapLoginButton()
            }).disposed(by: disposeBag)
    }
    
    func bindOutputs() {
        viewModel.finishLogin
            .asDriver { _ in .never() }
            .drive(onNext: {
                print("finish login !!!")
            }).disposed(by: disposeBag)
    }
}
