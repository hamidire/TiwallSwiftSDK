//
//  MetaModel.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/17/18.
//

import Foundation
public class MetaModel {
    public var offset : Int?
    public var count : Int?
    public var page_size : Int?
    public var next_offset : Int?
    public var order_token : Int?
    init() {
    }
    static func parse(rawJson: Dictionary<String,Any>)->MetaModel{
        let model = MetaModel()
        if let temp = rawJson["offset"] as? Int{
            model.offset = temp
        }
        if let temp = rawJson["count"] as? Int{
            model.count = temp
        }
        if let temp = rawJson["page_size"] as? Int{
            model.page_size = temp
        }
        if let temp = rawJson["next_offset"] as? Int{
            model.next_offset = temp
        }
        if let temp = rawJson["order_token"] as? Int{
            model.order_token = temp
        }
        return model
    }
}
