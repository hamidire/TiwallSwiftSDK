//
//  LocationModel.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/8/18.
//

import Foundation
class LocationModel {
    var latitude : Double?
    var longitude : Double?
    var latlong : String?
    static func parse(rawJson: Dictionary<String,Any>)->LocationModel{
        let model = LocationModel()
        if let temp = rawJson["latitude"] as? Double{
            model.latitude = temp
        }
        if let temp = rawJson["longitude"] as? Double{
            model.longitude = temp
        }
        if let temp = rawJson["latlong"] as? String{
            model.latlong = temp
        }
        return model
    }
}
