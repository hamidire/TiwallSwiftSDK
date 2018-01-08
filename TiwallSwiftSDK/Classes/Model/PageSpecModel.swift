//
//  SpecModel.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/7/18.
//

import Foundation
public class PageSpecModel {
    public var duration : Int?
    public var director : ChannelSummaryListModel?
    public var cast : ChannelSummaryListModel?
    public var writer : ChannelSummaryListModel?
    public var producer : ChannelSummaryListModel?
    public var translator : ChannelSummaryListModel?
    public var designer : ChannelSummaryListModel?
    public var dramaturge : ChannelSummaryListModel?
    public var othercast : ChannelSummaryListModel?
    public var min_age : Int?
    static func parseSpec(rawJson: Dictionary<String,Any>)->PageSpecModel{
        let model = PageSpecModel()
        if let temp = rawJson["duration"] as? Int{
            model.duration = temp
        }
        if let temp = rawJson["director"] as? Dictionary<String,Any>{
            model.director = ChannelSummaryListModel.parse(rawJson: temp)
        }
        if let temp = rawJson["cast"] as? Dictionary<String,Any>{
            model.cast = ChannelSummaryListModel.parse(rawJson: temp)
        }
        if let temp = rawJson["writer"] as? Dictionary<String,Any>{
            model.writer = ChannelSummaryListModel.parse(rawJson: temp)
        }
        if let temp = rawJson["producer"] as? Dictionary<String,Any>{
            model.producer = ChannelSummaryListModel.parse(rawJson: temp)
        }
        if let temp = rawJson["translator"] as? Dictionary<String,Any>{
            model.translator = ChannelSummaryListModel.parse(rawJson: temp)
        }
        if let temp = rawJson["designer"] as? Dictionary<String,Any>{
            model.designer = ChannelSummaryListModel.parse(rawJson: temp)
        }
        if let temp = rawJson["dramaturge"] as? Dictionary<String,Any>{
            model.dramaturge = ChannelSummaryListModel.parse(rawJson: temp)
        }
        if let temp = rawJson["othercast"] as? Dictionary<String,Any>{
            model.othercast = ChannelSummaryListModel.parse(rawJson: temp)
        }
        if let temp = rawJson["min_age"] as? Int{
            model.min_age = temp
        }
        return model
    }
}
