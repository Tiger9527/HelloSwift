//
//  MainNavigationController.swift
//  HelloSwift
//
//  Created by zhaotai on 2018/4/13.
//  Copyright © 2018年 zhaotai. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let attrs = [NSAttributedStringKey.font:kFont17,NSAttributedStringKey.foregroundColor:kColorBlack]
        navigationBar.titleTextAttributes = attrs
    }

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if childViewControllers.count > 0 {
            let button = UIButton(type: .custom)
            button.setImage(UIImage(named: "navigation_fh"), for: .normal)
            button.setImage(UIImage(named: "navigation_fh"), for: .highlighted)
            button.addTarget(self, action: #selector(back), for: .touchUpInside)
            button.setTitleColor(.darkGray, for: .normal)
            button.setTitleColor(.red, for: .highlighted)
            button.sizeToFit()
            button.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0)
            button.contentHorizontalAlignment = .left
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: animated)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
}

// MARK: - 点击事件
extension MainNavigationController {
    @objc func back(){
        popViewController(animated: true)
    }
}

// MARK: - 设置全屏pop手势
extension MainNavigationController {
    fileprivate func setUpPopGesTrue() {
        // 1.使用运行时, 打印手势中所有属性
        guard let targets = interactivePopGestureRecognizer!.value(forKey:  "_targets") as? [NSObject] else { return }
        let targetObjc = targets[0]
        let target = targetObjc.value(forKey: "target")
        let action = Selector(("handleNavigationTransition:"))
        
        let panGes = UIPanGestureRecognizer(target: target, action: action)
        view.addGestureRecognizer(panGes)
        
    }
}
