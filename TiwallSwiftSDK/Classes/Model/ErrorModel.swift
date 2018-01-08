//
//  ErrorModel.swift
//  Alamofire
//
//  Created by PFOREX on 1/6/18.
//

import Foundation
public class ErrorModel {
    static let ERROR_RESPONSE_STRUCTURE = 1
    static let ERROR_UNKNOWN = 2
    var code : Int!
    var message : String?
    var errors : [Dictionary<String,Any>]?
    init(code : Int , message : String?,errors : [Dictionary<String,Any>]?) {
        self.code = code
        self.message = message
        self.errors = errors
    }
}
