//
//  LoginVM.swift
//  ExTestableMVVM
//
//  Created by 김종권 on 2021/11/25.
//

import RxSwift
import RxCocoa

protocol LoginVMInput {
    func didTapLoginButton()
}

protocol LoginVMOutput {
    var finishLogin: PublishRelay<Void> { get }
}

struct LoginDependency {
    
}

protocol LoginVM: LoginVMInput, LoginVMOutput {
    var dependency: LoginDependency { get }
    init(dependency: LoginDependency)
}

final class LoginVMImpl: LoginVM {
    
    let dependency: LoginDependency
    
    init(dependency: LoginDependency) {
        self.dependency = dependency
    }
    
    // MARK: - Input
    
    func didTapLoginButton() {
        print("로그인 완료 !!!")
        finishLogin.accept(())
    }
    
    // MARK: - Output
    
    var finishLogin: PublishRelay<Void> = .init()
    
    // MARK: - Private
    
    
}
