//
//  UZCommon_macro.swift
//  HelloSwift
//
//  Created by zhaotai on 2017/7/10.
//  Copyright © 2017年 zhaotai. All rights reserved.
//

import UIKit
//宽高
public let kTopBarHeight : CFloat = 20
public let kScreenWidth : CGFloat = UIScreen.main.bounds.size.width
public let kScreenHeight : CGFloat = UIScreen.main.bounds.size.height

//颜色
func RGBCOLOR(r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor
{
    return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}

public let kColorWhite : UIColor = UIColor.white
public let kColorClear : UIColor = UIColor.clear

class UZCommon_macro: NSObject {

}
