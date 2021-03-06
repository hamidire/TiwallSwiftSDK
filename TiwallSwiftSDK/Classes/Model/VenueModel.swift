//
//  Venue.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/8/18.
//

import Foundation
public class VenueModel {
    public var id : Int?
    public var title : String?
    public var tel : String?
    public var address : String?
    public var location : LocationModel?
    public var channel_id : Int?
    static func parse(rawJson: Dictionary<String,Any>)->VenueModel{
        let model = VenueModel()
        if let temp = rawJson["id"] as? Int{
            model.id = temp
        }
        if let temp = rawJson["title"] as? String{
            model.title = temp
        }
        if let temp = rawJson["tel"] as? String{
            model.tel = temp
        }
        if let temp = rawJson["address"] as? String{
            model.address = temp
        }
        if let temp = rawJson["location"] as? Dictionary<String,Any>{
            model.location = LocationModel.parse(rawJson: temp)
        }
        if let temp = rawJson["channel_id"] as? Int{
            model.channel_id = temp
        }
        return model
    }
    
}
