//
//  UIViewController+Extension.swift
//  ChildViewController
//
//  Created by Stefan Sut on 1/4/18.
//  Copyright © 2018 Stefan Sut. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func addAsChildViewController(_ viewController: UIViewController, inView view: UIView) {
        addChildViewController(viewController)
        view.addSubview(viewController.view)
        
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        viewController.view.frame = view.bounds
        viewController.didMove(toParentViewController: self)
    }
    
    func removeAsChildViewController(_ viewController: UIViewController) {
        if !isChildViewController(viewController) { return }
        
        viewController.willMove(toParentViewController: nil)
        viewController.view.removeFromSuperview()
        viewController.removeFromParentViewController()
    }
    
    func isChildViewController(_ viewController: UIViewController) -> Bool {
        return childViewControllers.contains(viewController)
    }
    
}
