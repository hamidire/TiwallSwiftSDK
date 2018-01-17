//
//  PageListCellTableViewCell.swift
//  TiwallSwiftSDK_Example
//
//  Created by Nsun on 1/11/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TiwallSwiftSDK

class PageListCell: UITableViewCell {

    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    public func initializeCell (pageModel :PageModel){
        if let pageTitle = pageModel.title{
            self.title.text = pageTitle
            if let pageTitlePrefix = pageModel.title_prefix{
                self.title.text = pageTitlePrefix + " " + self.title.text!
            }
        }else{
            self.title.text = "test :-)"
        }
    }

}
