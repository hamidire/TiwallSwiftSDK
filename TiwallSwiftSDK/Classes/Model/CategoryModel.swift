//
//  CategoryModel.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/17/18.
//

import Foundation
public class CategoryModel {
    public enum CategoryKey:String {
        case drama = "drama"
        case concert = "concert"
        case film = "film"
        case tour = "tour"
        case training = "training"
        case exhibition = "exhibition"
        case conference = "conference"
        case book = "book"
        case membership = "membership"
    }
    public var key : CategoryKey?
    public var text : String?
    public var color : String?
    public var image : ImageModel?
    
    static func parse(rawJson: Dictionary<String,Any>)->CategoryModel{
        let model = CategoryModel()
        if let temp = rawJson["key"] as? String{
            model.key = CategoryKey(rawValue: temp)
        }
        if let temp = rawJson["text"] as? String{
            model.text = temp
        }
        if let temp = rawJson["color"] as? String{
            model.color = temp
        }
        if let temp = rawJson["image"] as? Dictionary<String,Any>{
            model.image = ImageModel.parse(rawJson: temp)
        }
        return model
    }
}
