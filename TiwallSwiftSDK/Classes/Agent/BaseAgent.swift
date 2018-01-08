//
//  BaseAgent.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/8/18.
//

import Foundation
public class BaseAgent {
    var scheme : String = "http://"
    var baseUrl : String = "api.tiwall.org/"
    var versionName : String = "v2"
    var serviceName : String!
    var methodName : String!
    init() {
        //TODO read the class properties from the config file
    }
    func createUrl(arrayKes : [String]?,arrayValues : [String]?)throws -> String{
        if arrayKes?.count != arrayValues?.count{
            throw NSError(domain: "arrayKes?.count != arrayValues?.count", code: 1, userInfo: nil)
        }else{
            var url = "\(self.scheme)\(self.baseUrl)\(self.versionName)/\(self.serviceName!)/\(self.methodName!)"
            if let keys = arrayKes,let values = arrayValues{
                url = url + "?"
                for index in 0...keys.count-1 {
                    url = "\(url)\(keys[index])=\(values[index])"
                }
            }
            return url
        }
        
    }
}
