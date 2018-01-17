//
//  PageDetailParam.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/17/18.
//

import Foundation
public class PageDetailParam {
    //createHashMap
    public var id : String!
    public init(id : Int) {
        self.id = "\(id)"
    }
    public init(urn : String) {
        self.id = urn
    }
    public func createDictionary() -> Dictionary<String,String> {
        var dict = Dictionary<String,String>()
        dict["id"] = id
        return dict
    }
}
