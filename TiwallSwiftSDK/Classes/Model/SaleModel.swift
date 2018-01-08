//
//  SaleModel.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/8/18.
//

import Foundation
public class SaleModel {
    public var active : Bool?
    public var method : String?
    public var deliver_type : String?
    public var start_datetime : String?
    public var start_datetime_text : String?
    static func parse(rawJson: Dictionary<String,Any>)->SaleModel{
        let model = SaleModel()
        if let temp = rawJson["active"] as? Bool{
            model.active = temp
        }
        if let temp = rawJson["method"] as? String{
            model.method = temp
        }
        if let temp = rawJson["deliver_type"] as? String{
            model.deliver_type = temp
        }
        if let temp = rawJson["start_datetime"] as? String{
            model.start_datetime = temp
        }
        if let temp = rawJson["start_datetime_text"] as? String{
            model.start_datetime_text = temp
        }
        return model
    }
    
}
