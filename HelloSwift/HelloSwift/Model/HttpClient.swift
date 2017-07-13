//
//  HttpClient.swift
//  HelloSwift
//
//  Created by zhaotai on 2017/7/12.
//  Copyright © 2017年 zhaotai. All rights reserved.
//

import Foundation
import Alamofire

enum HttpResponseType{
    case HttpResponseType_Common
    case HttpResponseType_Json
    case HttpResponseType_XML
}

enum MethodType{
    case HttpRestType_Get
    case HttpRestType_Post
    case HttpRestType_Put
    case HttpRestType_Del
    case HttpRestType_Upload
}

typealias sendVlesClosure = (AnyObject?, NSError?)->Void
typealias uploadClosure = (AnyObject?, NSError?,Int64?,Int64?,Int64?)->Void


class HttpClient : NSObject {
    //get
    func requestGetData(url: String, parameters: AnyObject, isLoginToken: Bool, successed:(_ responseObject: AnyObject?) -> (), failed: (_ error: NSError?) -> ()){
        Alamofire.request(url, method: .get, parameters: <#T##Parameters?#>, encoding: <#T##ParameterEncoding#>, headers: <#T##HTTPHeaders?#>)
        
    }
    //post
    //delete
    //put
}
