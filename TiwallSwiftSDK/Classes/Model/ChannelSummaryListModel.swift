//
//  ChannelSummaryList.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/8/18.
//

import Foundation
public class ChannelSummaryListModel {
    public var text : String?
    public var desc : String?
    public var list : Any?//Unknow yet
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
