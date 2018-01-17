//
//  CloudAgent.swift
//  Alamofire
//
//  Created by PFOREX on 1/6/18.
//

import Foundation
import Alamofire
public class CloudAgent {
    public init() {
    }
    public func get(url: String,completion : @escaping (_ response : Any?,_ error: String?)->()){
        Alamofire.request(url).responseJSON { response in
            print("CloudAgent:get:start:url\(url)")
            //TODO edit error to error model
            if let json = response.result.value {
                completion(json, nil)
            }
        }
    }
}
