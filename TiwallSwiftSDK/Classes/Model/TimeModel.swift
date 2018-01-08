//
//  Time.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/8/18.
//

import Foundation
public class TimeModel {
    public var text : String?
    public var list : [String]?
    static func parse(rawJson: Dictionary<String,Any>)->TimeModel{
        let model = TimeModel()
        if let temp = rawJson["text"] as? String{
            model.text = temp
        }
        if let temp = rawJson["list"] as? [String]{
            model.list = temp
        }
        return model
    }
}
