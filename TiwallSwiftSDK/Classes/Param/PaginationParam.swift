//
//  PaginationParam.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/17/18.
//

import Foundation
public class PaginationParam {
    //createHashMap
    //count offset
    public var count : Int?
    public var offset : Int?
    public var order_token : Int?
    public init(count : Int, offset : Int, orderToken : Int) {
        self.count = count
        self.offset = offset
        self.order_token = orderToken
    }
    public init(count : Int = 20){
        self.count = count
    }
    public func createDictionary() -> Dictionary<String,String> {
        var dict = Dictionary<String,String>()
        if let temp = count{
            dict["count"] = "\(temp)"
        }
        if let temp = offset{
            dict["offset"] = "\(temp)"
        }
        if let temp = order_token{
            dict["order_token"] = "\(temp)"
        }
        
        return dict
    }
}
