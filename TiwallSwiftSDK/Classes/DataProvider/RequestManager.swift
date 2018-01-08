//
//  RequestManager.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/6/18.
//

import Foundation
public class RequestManager {
    public enum ReqType:String {
        case post = "post"
        case get = "get"
    }
    public init() {
    }
    public func request(url: String, type: ReqType, cacheFlag : Bool, completion : @escaping (_ response : Any?, _ error: String?)->()){
        let cm = CacheManager()
        if !cacheFlag || !cm.validate(url: url) {
            let ca = CloudAgent()
            if type == ReqType.get{
                ca.get(url: url, completion: { (response, error) in
                    print("RequestManager:request:start:")
                    completion(response,error)
                })
            }else if type == ReqType.post{
                //TODO 
            }
        }else{
            //TODO: return result from cache manager
        }
    }
}
