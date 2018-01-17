//
//  PageListParam.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/17/18.
//

import Foundation
public class PageListParam {
    //createHashMap
    public var cat : CategoryModel.CategoryKey?
    public var type : PageModel.PageType?
    public var tag : String?
    public var criteria : String?
    public var parent_id : Int?
    public var with_sale : Bool?
    public var detail : Bool?
    public init() {
    }
    public func createDictionary() -> Dictionary<String,String> {
        var dict = Dictionary<String,String>()
        if let temp = cat{
            dict["cat"] = temp.rawValue
        }
        if let temp = type{
            dict["type"] = temp.rawValue
        }
        if let temp = tag{
            dict["tag"] = temp
        }
        if let temp = criteria{
            dict["criteria"] = temp
        }
        if let temp = parent_id{
            dict["parent_id"] = "\(temp)"
        }
        if let temp = with_sale{
            dict["with_sale"] = "\(temp)"
        }
        if let temp = detail{
            dict["detail"] = "\(temp)"
        }
        
        return dict
    }
}
