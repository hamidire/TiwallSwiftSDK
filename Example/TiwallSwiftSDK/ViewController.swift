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
        print("hi")
        let temp = PageAgent()
        temp.getList(params: ["":""]) { (models, meta, err) in
            print(models?.count)
        }
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

