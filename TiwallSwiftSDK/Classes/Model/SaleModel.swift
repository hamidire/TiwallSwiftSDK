//
//  SaleModel.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/8/18.
//

import Foundation
public class SaleModel {
    public var active : Bool?
    public var method : SaleMethod?
    public var deliver_type : DeliverType?
    public var start_datetime : String?
    public var start_datetime_text : String?
    public enum SaleMethod:String {
        case event = "event"
        case event_seat = "event_seat"
        case product = "product"
        case product_shipping = "product_shipping"
        case free = "free"
    }
    public enum DeliverType : String {
        case receipt = "receipt"
        case ticket = "ticket"
        case receipt_station = "receipt_station"
    }
    static func parse(rawJson: Dictionary<String,Any>)->SaleModel{
        let model = SaleModel()
        if let temp = rawJson["active"] as? Bool{
            model.active = temp
        }
        if let temp = rawJson["method"] as? String{
            model.method = SaleMethod(rawValue: temp)
        }
        if let temp = rawJson["deliver_type"] as? String{
            model.deliver_type = DeliverType(rawValue: temp)
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
