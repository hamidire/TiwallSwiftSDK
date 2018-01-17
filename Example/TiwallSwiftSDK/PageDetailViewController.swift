//
//  PageDetailViewController.swift
//  TiwallSwiftSDK_Example
//
//  Created by Nsun on 1/11/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TiwallSwiftSDK

class PageDetailViewController: UIViewController {

    @IBOutlet weak var pageDetailBody: UITextView!
    var pageModel :PageModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let tempTitle = self.pageModel.title, let tempId = self.pageModel.id{
            pageDetailBody.text =  "\(tempId) : \(tempTitle)" 
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
