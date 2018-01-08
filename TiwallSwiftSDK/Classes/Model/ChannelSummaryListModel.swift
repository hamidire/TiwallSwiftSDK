//
//  ChannelSummaryList.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/8/18.
//

import Foundation
class ChannelSummaryListModel {
    var text : String?
    var desc : String?
    var list : Any?//Unknow yet
    static func parse(rawJson: Dictionary<String,Any>)->ChannelSummaryListModel{
        let model = ChannelSummaryListModel()
        if let temp = rawJson["text"] as? String{
            model.text = temp
        }
        if let temp = rawJson["desc"] as? String{
            model.desc = temp
        }
        return model
    }
}
