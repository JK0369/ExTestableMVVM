//
//  LoginRouter.swift
//  ExTestableMVVM
//
//  Created by 김종권 on 2021/11/25.
//

import UIKit

class LoginRouter: BaseRouter {
    weak var viewController: UIViewController?
    
    init(viewController: UIViewController) {
        self.viewController = viewController
    }
}
