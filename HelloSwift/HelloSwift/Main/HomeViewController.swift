//
//  HomeViewController.swift
//  HelloSwift
//
//  Created by zhaotai on 2017/7/14.
//  Copyright © 2017年 zhaotai. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    private var userEntity : UserEntity?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ApiLoadingProvider.request(YZAPI.getNickToken, model: UserEntity.self) { (returnData) in

        }
//        ApiLoadingProvider.request(YZAPI.login(userName: "15829763241", pwd: "a123456"), model: UserEntity.self) { [weak self] (returnData) in
//
//        }
//        ApiLoadingProvider.request(YZAPI.getNavCategory, model: UserEntity.self) { [weak self] (returnData) in
//
//        }
    }
}
