//
//  Url_macro.swift
//  HelloSwift
//
//  Created by zhaotai on 2017/7/12.
//  Copyright © 2017年 zhaotai. All rights reserved.
//

import Foundation

public let kTerminalTypeValue : String = "IOS"
//服务器地址
//公网
//public let kUrlBase : String = "https://www.uzaochina.com"
//public let kUrlImageBase : String = "https://106.14.42.176"
//开发
public let kUrlBase : String = "http://192.168.2.115"
public let kUrlImageBase : String = "http://192.168.2.114"
//测试
//public let kUrlBase : String = "http://192.168.2.120"
//public let kUrlImageBase : String = "http://192.168.2.120"
//图片文件夹
public let KUrlImageUser : String = "/avatar/"
public let KImageProduct : String = "/product/"
public let KUrlImageAfterSale : String = "/aftersale/"

//中间字段
public let freeapis_web_systemctl : String = "/freeapis-web-systemctl/1"
public let freeapis_web_security : String = "/freeapis-web-security/1"
public let freeapis_web_agency : String = "/freeapis-web-agency/1"
public let freeapis_web_publicuser : String = "/freeapis-web-publicuser/1"
public let freeapis_web_asi : String = "/freeapis-web-asi/1"
public let freeapis_web_cms : String = "/freeapis-web-cms/1"
public let freeapis_web_product : String = "/freeapis-web-product/1"
public let storage_server : String = "/freeapis-web-storage/1"
public let freeapis_web_business : String = "/freeapis-web-business/1"
public let freeapis_web_trade : String = "/freeapis-web-trade/1"
public let freeapis_web_notification : String = "/freeapis-web-notification/1"

//-------------------收货地址------------------
//创建收货地址
public let kUrlAddressAdd : String = freeapis_web_publicuser + "/addresses"
//获取收货地址列表
public let kUrlAddressGetList : String = freeapis_web_publicuser + "/addresses/public/me"
//删除收货地址
public let kUrlAddressRemove : String = freeapis_web_publicuser + "/addresses"
//更新收货地址
public let kUrlAddressUpdate : String = freeapis_web_publicuser + "/addresses?id="
//设置默认收货地址
public let kUrlAddressSetDefaultWithId : String = freeapis_web_publicuser + "/addresses/"
//省份列表
public let kUrlAddressProvince : String = freeapis_web_publicuser + "/location/provinces"
//城市列表
public let kUrlAddressCity : String = freeapis_web_publicuser + "/location/"
//------------------用户操作-------------------
//匿名登录
public let kUrlUserNickToken : String = freeapis_web_security + "/authentication/anonymous"
//获取手机验证码
public let kUrlUserVerificationCode : String = freeapis_web_security + "/sms/verifyingcode/AUTH/"
//手机验证码登录
public let kUrlUserLogin : String = freeapis_web_security + "/authentication/public/smscode/mobile"
//密码登录
public let kUrlUserPSWLogin : String = freeapis_web_security + "/authentication/public/userNamePassword/mobile"

//获取用户信息
public let kUrlUserInfo : String = freeapis_web_publicuser + "/publicuser/mobile/me"
//修改用户信息
public let kUrlEditUserInfo : String = freeapis_web_publicuser + "/publicuser/me"
//昵称是否可用
public let kUrlNickNameCheck : String = freeapis_web_publicuser + "/publicuser/nickName/available?nickName="
//上传文件
public let kUrlUploadFile : String = storage_server + "/storage/avatar"//avatar
//上传多文件
public let kUrlUploadManyFiles : String = storage_server + "/storage/multi/aftersale"
//判断是否已收藏and收藏
public let kUrlProductCollect : String = freeapis_web_publicuser + "/favorites/designSpu/"
//取消收藏
public let kUrlCancelCollect : String = freeapis_web_publicuser + "/favorites/designSpu"
//关注的设计师列表
public let kUrlAttentionDesignerList : String = freeapis_web_publicuser + "/favorites/designer/page?"
//收藏的商品列表
public let kUrlFavorProductList : String = freeapis_web_publicuser + "/favorites/designSpu/page?"
//我的商品列表
public let kUrlMyProductList : String = freeapis_web_product + "/designSpu/my/page?"
//关注设计师
public let kUrlAttentionDesigner : String = freeapis_web_publicuser + "/favorites/designer/"
//取消关注设计师
public let kUrlNotAttentionDesigner : String = freeapis_web_publicuser + "/favorites/designer"
//判断是否关注设计师
public let kUrlCheckAttentionDesigner : String = freeapis_web_publicuser + "/favorites/designer/"
//可提现金额
public let kUrlUserCash : String = freeapis_web_trade + "/account/balance"


//
//------------------商品操作-------------------
//一级分类目录
public let kUrlCategory : String = freeapis_web_product + "/categories//treeview/async?parentCode="
//三级分类下的商品列表
public let kUrlProductList : String = freeapis_web_product + "/designSpu/portal/page?categoryCode="
//商品详情
public let kUrlProductDetail : String = freeapis_web_product + "/designSpu/partial/"
//导航sync
public let kUrlHomeNavigationSync : String = freeapis_web_product + "/navigate/enable/treeview/sync/app"
//-------------------搜索-----------------------
//搜索商品
public let kUrlSearchProduct : String = freeapis_web_product + "/designSpu/portal/page?spuName="
//搜索设计师
public let kUrlSearchDesigner : String =  freeapis_web_publicuser + "/publicuser/designer/page?nickName="

//--------------------设计师----------------------
//设计师详情
public let kUrlDesignerDetail : String = freeapis_web_publicuser + "/publicuser/designer/"
//设计师商品列表
public let kUrlDesignerProductList : String = freeapis_web_product + "/designSpu/"

//--------------------消息------------------------
//消息列表
public let kUrlMessageList : String = freeapis_web_notification + "/message/page"
//消息详情
public let kUrlMessageDetail : String = freeapis_web_notification + "/message/"
//删除消息
public let kUrlMessageDelete : String = freeapis_web_notification + "/message"

//--------------------购物车-----------------------
//查看我的购物车
public let kUrlCartList : String = freeapis_web_publicuser + "/cart"

//--------------------订单--------------------------
//根据订单编号查询订单详细信息
public let kUrlOrderDetail : String = freeapis_web_business + "/order/myDetail/"
//设计师售出商品
public let kUrlOrderMySoldProduct : String = freeapis_web_business + "/order/designerSold/page?"
//创建订单
public let kUrlOrderCreate : String = freeapis_web_business + "/order/productOrder"
//我的售后订单
public let kUrlOrderAfterSale : String = freeapis_web_business + "/afterSaleApply/my/page?"
//我的全部订单
public let kUrlOrderTotal : String = freeapis_web_business + "/order/myPage?"
//根据状态分页查询我的订单列表
public let kUrlOrderByState : String = freeapis_web_business + "/order/status/myPage?"
//查询物流信息
public let kUrlOrderLogistics : String = freeapis_web_business + "/transport/"
//逻辑删除订单
public let kUrlOrderDelete : String = freeapis_web_business + "/order/"
//取消订单
public let kUrlOrderCancel : String = freeapis_web_business + "/order/public/cancel"
//确认收货
public let kUrlOrderConfirm : String = freeapis_web_business + "/order/receipt/"
//申请售后
public let kUrlProductAFApply : String = freeapis_web_business + "/afterSaleApply"
//请求售后
public let kUrlProductBeforeAFApply : String = freeapis_web_business + "/order/afterSaleApply/"
//售后详情
public let kUrlProductAFDetail : String = freeapis_web_business + "/afterSaleApply/mobile/"
//支付
public let kUrlOrderPayment : String = freeapis_web_trade + "/trade/payment/"
//支付回调
public let kUrlOrderPayBack : String = freeapis_web_trade + "/trade/payment/callback/manual/"

//修改订单地址
public let kUrlOrderAddressEdit : String = freeapis_web_business + "/order/receiver"
