//
//  SubjectModel.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/8/18.
//

import Foundation
class SubjectModel{
    var id : Int?
    var urn : String?
    var parent_id : Int?
    static func parse(rawJson: Dictionary<String,Any>)->SubjectModel{
        let model = SubjectModel()
        if let temp = rawJson["id"] as? Int{
            model.id = temp
        }
        if let temp = rawJson["urn"] as? String{
            model.urn = temp
        }
        if let temp = rawJson["parent_id"] as? Int{
            model.parent_id = temp
        }
        return model
    }
}
