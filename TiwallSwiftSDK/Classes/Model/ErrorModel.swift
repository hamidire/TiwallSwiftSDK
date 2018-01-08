//
//  ErrorModel.swift
//  Alamofire
//
//  Created by PFOREX on 1/6/18.
//

import Foundation
public class ErrorModel {
    public static let ERROR_RESPONSE_STRUCTURE = 1
    public static let ERROR_UNKNOWN = 2
    public var code : Int!
    public var message : String?
    public var errors : [Dictionary<String,Any>]?
    init(code : Int , message : String?,errors : [Dictionary<String,Any>]?) {
        self.code = code
        self.message = message
        self.errors = errors
    }
}
