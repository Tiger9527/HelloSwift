//
//  YZAPI.swift
//  HelloSwift
//
//  Created by zhaotai on 2018/6/1.
//  Copyright © 2018 zhaotai. All rights reserved.
//  网络请求

import Foundation
import Moya
import HandyJSON
import SVProgressHUD
import XCGLogger

var topVC: UIViewController? {
    var resultVC: UIViewController?
    resultVC = _topVC(UIApplication.shared.keyWindow?.rootViewController)
    while resultVC?.presentedViewController != nil {
        resultVC = _topVC(resultVC?.presentedViewController)
    }
    return resultVC
}

private  func _topVC(_ vc: UIViewController?) -> UIViewController? {
    if vc is UINavigationController {
        return _topVC((vc as? UINavigationController)?.topViewController)
    } else if vc is UITabBarController {
        return _topVC((vc as? UITabBarController)?.selectedViewController)
    } else {
        return vc
    }
}

let LoadingPlugin = NetworkActivityPlugin { (type, target) in
    guard let vc = topVC else { return }
    switch type {
    case .began:
        SVProgressHUD.show()
    case .ended:
        SVProgressHUD.dismiss()
    }
}

let timeoutClosure = {(endpoint: Endpoint<YZAPI>, closure: MoyaProvider<YZAPI>.RequestResultClosure) -> Void in
    if var urlRequest = try? endpoint.urlRequest() {
        urlRequest.timeoutInterval = 20
        closure(.success(urlRequest))
    } else {
        closure(.failure(MoyaError.requestMapping(endpoint.url)))
    }
}

let ApiProvider = MoyaProvider<YZAPI>(requestClosure: timeoutClosure)
let ApiLoadingProvider = MoyaProvider<YZAPI>(requestClosure: timeoutClosure, plugins: [LoadingPlugin])


enum YZAPI {
    case login(userName:String,pwd:String) //用户名密码登录
    case getNickToken                      //获取匿名token
    case getNavCategory                    //获取分类
}

extension YZAPI: TargetType{
    var baseURL: URL {
        return URL.init(string: kUrlBase)!
    }
    
    var path: String {
        switch self {
        case .getNickToken:
            return kUrlUserNickToken
        case .login:
            return kUrlUserPSWLogin
        case .getNavCategory:
            return kUrlHomeNavigationSync
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .login, .getNickToken:
            return .post
        default:
            return .get
        }
    }
    
    var task: Task {
        var parmeters = [String : String]()
        switch self {
        case .getNickToken,.getNavCategory:
            parmeters = [:]
        case let .login(userName,pwd):
            parmeters["loginId"] = userName
            parmeters["password"] = pwd
            parmeters["agency"] = "SUPER_ADMIN"
        }
        print("path:\(baseURL)\(path)")
        
        return .requestParameters(parameters: parmeters, encoding: URLEncoding.default)
    }
    

    var headers: [String : String]? {
        return ["Content-Type":"Application/json",
                "product":"iOS",
                //"token":"79825040-1be8-44cb-b3d3-836334c0fd39"
        ]
    }
    
    var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
}

extension Response {
    func mapModel<T: HandyJSON>(_ type: T.Type) throws -> T {
        let jsonString = String(data: data, encoding: .utf8)
        guard let model = JSONDeserializer<T>.deserializeFrom(json: jsonString) else {
            throw MoyaError.jsonMapping(self)
        }
        print(model)
        return model
    }
}

extension MoyaProvider {
    @discardableResult
    open func request<T: HandyJSON>(_ target: Target,
                                    model: T.Type,
                                    completion: ((_ returnData: T?) -> Void)?) -> Cancellable? {
        
        return request(target, completion: { (result) in
            guard let completion = completion else { return }
            guard let returnData = try? result.value?.mapModel(ResponseData<T>.self) else {
                completion(nil)
                return
            }
            completion(returnData?.result?.returnData)
        })
    }
}

func cancelAllRequest() {
    //    MyAPIProvider.manager.session.invalidateAndCancel()  //取消所有请求
    ApiProvider.manager.session.getTasksWithCompletionHandler { dataTasks, uploadTasks, downloadTasks in
        dataTasks.forEach { $0.cancel() }
        uploadTasks.forEach { $0.cancel() }
        downloadTasks.forEach { $0.cancel() }
    }
}


