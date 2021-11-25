//
//  BaseRouter.swift
//  BaseMVVM
//
//  Created by 김종권 on 2021/11/14.
//

import UIKit

protocol BaseRouter {
    var viewController: UIViewController? { get set }
    
    func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)?)
    func pushViewController(_ viewController: UIViewController, animated: Bool)
    func back(animated: Bool)
}

extension BaseRouter {
    func present(_ viewController: UIViewController, animated: Bool, completion: (() -> Void)? = nil) {
        self.viewController?.present(viewController, animated: animated, completion: completion)
    }
    
    func pushViewController(_ viewController: UIViewController, animated: Bool) {
        guard let navigationController = self.viewController?.navigationController else { return }
        navigationController.pushViewController(viewController, animated: animated)
    }
    
    func back(animated: Bool) {
        if let lastViewController =  viewController?.presentingViewController {
            lastViewController.dismiss(animated: animated, completion: nil)
        } else {
            (viewController as? UINavigationController)?.popViewController(animated: animated)
        }
    }
}
