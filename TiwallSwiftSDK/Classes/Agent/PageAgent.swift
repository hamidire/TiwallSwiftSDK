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
    public func getDetail(param : PageDetailParam, completion : @escaping(_ data : PageModel? ,_ error : ErrorModel?)->()){
        self.methodName = "get"
        do{
            try requestManager.request(url: self.createUrl(arrayKes: convertDictToArrayKeys(dict: param.createDictionary()), arrayValues: convertDictToArrayValues(dict: param.createDictionary())), type: RequestManager.ReqType.get, cacheFlag: true, completion: { (response, error) in
                if error != nil{
                    completion(nil, ErrorModel(code: 0, message: "PageAgent:getDetail", errors: nil) )
                }else{
                    if let tempRes = response{
                        if let temp = tempRes.error{
                            completion(nil, temp)
                        }else if let data = tempRes.data as? Dictionary<String,Any>{
                            let model = PageModel.parse(rawJson: data)
                            completion(model, nil)
                        }
                    }else{
                        completion(nil, ErrorModel(code: 0, message: "PageAgent:getDetail: nil reponse", errors: nil) )
                    }
                    
                }
            })
        }catch{
            print("#EEE:PageAgent:getDetail:1")
        }
    }
    public func getList(params : PageListParam, paginationParams : PaginationParam ,completion : @escaping(_ data : [PageModel]?,_ meta:Dictionary<String,Any>?,_ error : ErrorModel?)->()){
        self.methodName = "list"
        let mergedParams = params.createDictionary().merging(paginationParams.createDictionary(), uniquingKeysWith: { (first, _) in first })
        do{
            try requestManager.request(url: self.createUrl(arrayKes: convertDictToArrayKeys(dict: mergedParams), arrayValues: convertDictToArrayValues(dict: mergedParams)), type: RequestManager.ReqType.get, cacheFlag: true
                , completion: { (response, error) in
                    if error != nil{
                        completion(nil,nil, ErrorModel(code: 0, message: "PageAgent:getList", errors: nil) )
                    }else{
                        if let tempRes = response{
                            if let temp = tempRes.error{
                                completion(nil,nil, temp)
                            }else if let data = tempRes.data as? [Dictionary<String,Any>]{
                                let models = PageModel.parseArray(jsonArr: data)
                                completion(models,nil,nil)
                            }
                        }else{
                            completion(nil,nil, ErrorModel(code: 0, message: "PageAgent:getList: nil reponse", errors: nil) )
                        }
                        
                    }
            })
        }catch{
            print("#EEE")
        }
        
        
        var metaDict : Dictionary<String,Any>?
//        do{
//            try requestManager.request(url: self.createUrl(arrayKes: convertDictToArrayKeys(dict: params), arrayValues: convertDictToArrayValues(dict: params)), type: RequestManager.ReqType.get, cacheFlag: true) { (response, error) in
//                print("PageAgent:getList:start")
//                if let temp = response as? Dictionary<String,Any>{
//
//                    if let ok = temp["ok"] as? Bool,ok == true{
//                        if let meta = temp["meta"] as? Dictionary<String,Any>?{
//                            metaDict = meta
//                        }
//                        if let data = temp["data"] as? [Dictionary<String,Any>]{
//                            completion(PageModel.parseArray(jsonArr: data), metaDict, nil)
//                        }else{
//                            //TODO inform busisness layer
//                        }
//
//                    }else{
//                        //TODO inform busisness layer
//                    }
//                }else{
//                    //TODO inform busisness layer
//                }
//
//            }
//        }catch{
//            print("#EEE")
//        }
    }
}
