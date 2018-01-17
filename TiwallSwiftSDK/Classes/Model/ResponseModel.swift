//
//  ResponseModel.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/17/18.
//

import Foundation
public class ResponseModel {
    public var data : Any?
    public var meta : MetaModel?
    public var ok : Bool?
    public var error : ErrorModel?
    
    static func parse (rawJson: Dictionary<String,Any>)->ResponseModel{
        let model = ResponseModel()
        if let temp = rawJson["ok"] as? Bool{
            model.ok = temp
        }
        if let temp = rawJson["data"]{
            model.data = temp
        }
        if let temp = rawJson["meta"] as? Dictionary<String,Any>{
            model.meta = MetaModel.parse(rawJson: temp)
        }
        //TODO fill the error object in appropriate states
        return model
    }
}
