//
//  MainTabBar.swift
//  HelloSwift
//
//  Created by zhaotai on 2018/4/13.
//  Copyright © 2018年 zhaotai. All rights reserved.
//

import UIKit

class MainTabBar: UITabBar {
    //设置背景,去除tabbar的黑线
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.shadowImage = UIImage()
        self.backgroundImage = UIImage()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
