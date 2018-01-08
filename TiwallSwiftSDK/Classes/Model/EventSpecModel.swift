//
//  EventSpecModel.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/7/18.
//

import Foundation
public class EventSpecModel: PageSpecModel{
    public var start_date : String?
    public var end_date : String?
    public var start_date_text : String?
    public var end_date_text : String?
    public var time : TimeModel?
    public var venue : VenueModel?
    static func parse(rawJson: Dictionary<String,Any>)->EventSpecModel{
        print(super.parseSpec(rawJson: rawJson))
        let model = EventSpecModel()
        if let temp = rawJson["start_date"] as? String{
            model.start_date = temp
        }
        if let temp = rawJson["end_date"] as? String{
            model.end_date = temp
        }
        if let temp = rawJson["start_date_text"] as? String{
            model.start_date_text = temp
        }
        if let temp = rawJson["end_date_text"] as? String{
            model.end_date_text = temp
        }
        if let temp = rawJson["time"] as? Dictionary<String,Any>{
            model.time = TimeModel.parse(rawJson: temp)
        }
        if let temp = rawJson["venue"] as? Dictionary<String,Any>{
            model.venue = VenueModel.parse(rawJson: temp)
        }
        return model
    } 
}
