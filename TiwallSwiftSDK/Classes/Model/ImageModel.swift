//
//  ImageModel.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/7/18.
//

import Foundation
public class ImageModel {
    public var thumb_url : String?
    public var normal_url : String?
    public var big_url : String?
    static func parse(rawJson: Dictionary<String,Any>)->ImageModel{
        let model = ImageModel()
        if let temp = rawJson["thumb_url"] as? String{
            model.thumb_url = temp
        }
        if let temp = rawJson["normal_url"] as? String{
            model.normal_url = temp
        }
        if let temp = rawJson["big_url"] as? String{
            model.big_url = temp
        }
        return model
    }
}
