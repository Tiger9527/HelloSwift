//
//  UZaoProject_macro.swift
//  HelloSwift
//
//  Created by zhaotai on 2017/7/12.
//  Copyright © 2017年 zhaotai. All rights reserved.
//

import Foundation

//收藏状态
public let kFavorStatusMy : NSString = "001"
public let kFavorStatusAttention : NSString = "002"
public let kFavorStatusGoods : NSString = "003"

//订单状态
public let kRoughStatusPendingPay : NSString = "waitPay" //待付款
public let kRoughStatusCheck : NSString = "waitApprove" //待审核
public let kRoughStatusDelivering : NSString = "waitReceive" //配送中，待收货
public let kRoughStatusWaitDeliver : NSString = "waitDelivery" //待发货
public let kRoughStatusFinished : NSString = "finished" //已完成
public let kRoughStatusClosed : NSString = "closed" //已关闭

//支付方式
public let kPayWayWeiXin : NSString = "weixin"
public let kPayWayAlipay : NSString = "alipay"

//购买方式
public let kPayWayCart : NSString = "cart"
public let kPayWayBuyNow : NSString = "buyNow"

//友盟
public let UMengAppKey : NSString = "593a186bc62dca2992000253"
public let UMengAppSecret : NSString = "rximaj9i4u2ddzc4hy5cu9g51puavdg8"
public let UMengAppType : NSString = "userId"

//------ping++--------
public let kWaiting : NSString = "正在获取支付凭据,请稍后..."
public let kNote : NSString = "提示"
public let kConfirm : NSString = "确定"
public let kErrorNet : NSString = "网络错误"
public let kResult : NSString = "支付结果：%@"
public let kPlaceHolder : NSString = "支付金额"
public let kMaxAmount : NSInteger = 9999999
public let kUrlScheme : NSString = "uzaochina"

