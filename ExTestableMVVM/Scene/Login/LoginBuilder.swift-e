//
//  LoginBuilder.swift
//  ExTestableMVVM
//
//  Created by 김종권 on 2021/11/25.
//

import Foundation

class LoginBuilder {
    static func build<VM: LoginVM>(dependency: LoginDependency, viewModelType: VM.Type) -> LoginVC {
        let vm = VM(dependency: dependency)
        return LoginVC.instantiate(viewModel: vm)
    }
}
