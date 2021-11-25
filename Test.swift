//
//  Test.swift
//  ExTestableMVVMTests
//
//  Created by 김종권 on 2021/11/26.
//

import XCTest
@testable import ExTestableMVVM

class LoginVMTest: XCTestCase {
    
    let dependency = LoginDependency()
    var loginVM: LoginVMImpl!

    override func setUpWithError() throws {
        loginVM = LoginVMImpl(dependency: dependency)
    }
    
    func test_whenDidTapLoginButton_thenStateChange() {
        loginVM.didTapLoginButton()
        XCTAssertTrue(loginVM.state == .login)
    }

}
