//
//  ViewController.swift
//  TiwallSwiftSDK
//
//  Created by hamidire@gmail.com on 01/06/2018.
//  Copyright (c) 2018 hamidire@gmail.com. All rights reserved.
//

import UIKit
import TiwallSwiftSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let temp = PageAgent()
<<<<<<< HEAD
        temp.getList(params: ["":""]) { (models, meta, err) in
            if let temp = models {
                if let tempSpec = temp[0].spec as? EventSpecModel{
                }
            }
            
        }

=======
        let tempParams = PageListParam()
        tempParams.cat = CategoryModel.CategoryKey.film
        let tempPagination = PaginationParam(count: 4, offset: 2, orderToken: 0)
        temp.getList(params: tempParams, paginationParams: tempPagination) { (models, meta, error) in
            print("hi23423432424")
            print(models?.count)
            if let tempModels = models{
                for item in tempModels{
                    print(item.title)
                }
            }
//            print(models)
        }
//        temp.getList(params: ["":""]) { (models, meta, err) in
        
//            print(models[0].pri)
            
//        }
//        let detailParams = PageDetailParam(id: 4573)
//        temp.getDetail(param: detailParams) { (model, error) in
//            if let temp = error {
//                print("#EEE \(temp.message)")
//            }
//            print(model?.title)
//        }
>>>>>>> 802803875176119a60cb8a8ddf52cbad1c1ea85c
//        temp.request(url: "http://api.tiwall.com/v2/pages/categories?mode=ticket_store", type: RequestManager.ReqType.get, cacheFlag: false, completion: { (response, error) in
//            print("ViewController:viewDidLoad:request")
//            print(response)
//        })
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func btnClicked(_ sender: Any) {
        print("shit")
    }
    
}

