//
//  AdminTableViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 1/15/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit
import Parse
import Bolts
import Foundation

class AdminTableViewController: UITableViewController {
    var notiArray: NSMutableArray = NSMutableArray()
    var sectionContentDict : NSMutableDictionary = NSMutableDictionary()

    override func viewDidLoad() {
        super.viewDidLoad()

        let query: PFQuery = PFQuery(className: "supermarket")
        var i = 0
        query.whereKeyExists("Notification")
        query.orderByDescending("createdAt")
        query.findObjectsInBackgroundWithBlock {
            (objects:[PFObject]?, error:NSError?) -> Void in
            for object in objects! {
                self.notiArray[i] = object["Notification"] as! String
                i = i + 1
            }
            var string1 = "Key"
            
            [self.sectionContentDict .setValue(self.notiArray, forKey:string1 )]
            
            self.tableView.reloadData()
        }
        
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       return self.notiArray.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> AdminTableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("adminCell", forIndexPath: indexPath) as! AdminTableViewCell
         let content = sectionContentDict .valueForKey("Key")
        
        var longNotification = content?.objectAtIndex(indexPath.row) as? String
        
        
        cell.notiLabel.text = content?.objectAtIndex(indexPath.row) as? String

        return cell
    }
    

 

}
