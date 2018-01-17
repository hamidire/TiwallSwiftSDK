//
//  PageListTableViewController.swift
//  TiwallSwiftSDK_Example
//
//  Created by Nsun on 1/11/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit
import TiwallSwiftSDK

class PageListTableViewController: UITableViewController {

    @IBOutlet var pageListTable: UITableView!
    var pageListArray = [PageModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        let tempAgent = PageAgent()
        tempAgent.getList(params: ["":""]) { (models, meta, err) in
            if let tempPageListArray = models {
                self.pageListArray = tempPageListArray
                self.pageListTable.reloadData()
            }
        }

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.pageListArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> PageListCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pageCell", for: indexPath) as! PageListCell
        cell.initializeCell(pageModel: pageListArray[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "pageListToDetailSegue", sender: pageListArray[indexPath.row])
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let temp = segue.identifier{
            switch temp{
            case "pageListToDetailSegue":
                if let destinationVC = segue.destination as? PageDetailViewController{
                    if let tempModel = sender as? PageModel{
                        destinationVC.pageModel = tempModel
                    }
                }
            default:
                break
            }
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
}
