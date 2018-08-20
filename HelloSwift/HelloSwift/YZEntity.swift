//
//  YZEntity.swift
//  HelloSwift
//
//  Created by zhaotai on 2018/8/15.
//  Copyright © 2018 zhaotai. All rights reserved.
//  实体

import UIKit
import HandyJSON

struct UserEntity: HandyJSON {
    var nickToken:String?   //匿名token
    var loginToken:String?  //登录token
    var phone:String?       //电话
    var realName:String?    //真实姓名
    var nickName:String?    //昵称
    var gender:String?      //性别
}

extension Array: HandyJSON{}

struct ReturnData<T: HandyJSON>: HandyJSON {
    var message:String?
    var returnData: T?
    var status: Int = 0
}

struct ResponseData<T: HandyJSON>: HandyJSON {
    var code: Int = 0
    var result: ReturnData<T>?
    var message:String?
    var status: Int = 0
    var developerMessage : String?
    var moreInfoUrl : String?
    
}
