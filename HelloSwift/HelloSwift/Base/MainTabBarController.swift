//
//  MainTabBarController.swift
//  HelloSwift
//
//  Created by zhaotai on 2018/4/13.
//  Copyright © 2018年 zhaotai. All rights reserved.
//  底部tabbar

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tabbar = UITabBarItem.appearance()
        let attrs_Normal = [NSAttributedStringKey.font:kFont11, NSAttributedStringKey.foregroundColor:kColorMainText]
        let attrs_sel = [NSAttributedStringKey.font:kFont11, NSAttributedStringKey.foregroundColor:kColorMainRed]
        tabbar.setTitleTextAttributes(attrs_Normal, for: .normal)
        tabbar.setTitleTextAttributes(attrs_sel, for: .selected)
        setupUI()
    }
}

extension MainTabBarController {
    fileprivate func setupUI() {
        setValue(MainTabBar(),forKey: "tabBar")
        let vcArray:[UIViewController] = [HomeViewController(), MarketViewController(), CartViewController(), UserViewController()]
        let titleArray = ["首页","分类","购物车","我的"]
        for (index, vc) in vcArray.enumerated() {
            vc.title = titleArray[index]
            vc.tabBarItem.title = titleArray[index]
            vc.tabBarItem.image = UIImage(named: "tab\(index+1)-off")?.withRenderingMode(.alwaysOriginal)
            vc.tabBarItem.selectedImage = UIImage(named: "tab\(index+1)-on")?.withRenderingMode(.alwaysOriginal)
            let nav = MainNavigationController(rootViewController: vc)
            addChildViewController(nav)
        }
    }
}
