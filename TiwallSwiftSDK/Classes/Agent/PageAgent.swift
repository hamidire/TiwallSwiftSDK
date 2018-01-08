//
//  PageAgent.swift
//  TiwallSwiftSDK
//
//  Created by PFOREX on 1/8/18.
//

import Foundation
public class PageAgent: BaseAgent {
    var requestManager = RequestManager()
    public override init() {
        super.init()
        self.serviceName = "pages"
    }
    public func getList(params : Dictionary<String,String>,completion:@escaping(_ data : [PageModel]?,_ meta:Dictionary<String,Any>?,_ error : ErrorModel?)->()){
        self.methodName = "list"
        var metaDict : Dictionary<String,Any>?
        do{
            try requestManager.request(url: self.createUrl(arrayKes: convertDictToArrayKeys(dict: params), arrayValues: convertDictToArrayValues(dict: params)), type: RequestManager.ReqType.get, cacheFlag: true) { (response, error) in
                print("PageAgent:getList:start")
                if let temp = response as? Dictionary<String,Any>{
                    
                    if let ok = temp["ok"] as? Bool,ok == true{
                        if let meta = temp["meta"] as? Dictionary<String,Any>?{
                            metaDict = meta
                        }
                        if let data = temp["data"] as? [Dictionary<String,Any>]{
                            completion(PageModel.parseArray(jsonArr: data), metaDict, nil)
                        }else{
                            //TODO inform busisness layer
                        }
                        
                    }else{
                        //TODO inform busisness layer
                    }
                }else{
                    //TODO inform busisness layer
                }
                
            }
        }catch{
            print("#EEE")
        }
    }
}
