//
//  ViewController.swift
//  ChildViewController
//
//  Created by Stefan Sut on 1/4/18.
//  Copyright © 2018 Stefan Sut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupChildViewControllers()
    }
    
    // MARK: Outlet
    
    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var containerView2: UIView!
    
    // MARK: Private
    
    private let childViewController1: UIViewController = {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .red
        return viewController
    }()
    
    private let childViewController2: UIViewController = {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .yellow
        return viewController
    }()
    
    private func setupChildViewControllers() {
        addAsChildViewController(childViewController1, inView: containerView1)
        addAsChildViewController(childViewController2, inView: containerView2)
    }
    
    // MARK: IBAction
    @IBAction func removeViewControllerButtonTouchUpInside(_ sender: UIButton) {
        removeAsChildViewController(childViewController1)
        removeAsChildViewController(childViewController2)
    }
    
}

