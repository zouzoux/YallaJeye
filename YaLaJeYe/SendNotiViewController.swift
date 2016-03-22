//
//  SendNotiViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 1/26/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit
import Parse

class SendNotiViewController: UIViewController {
    @IBOutlet weak var sendButton: UIButton!

    @IBOutlet weak var notiHolder: JiroTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sendButton.layer.cornerRadius = 10 // this value vary as per your desire
        sendButton.clipsToBounds = true
        
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

    @IBAction func sendAction(sender: AnyObject) {
        
        let pushQuery: PFQuery = PFInstallation.query()!
        pushQuery.whereKeyExists("user")
        if let notiSend:String = notiHolder.text{
        let data = [ "title": "Yalla Jeye",
            "alert": notiSend, "sound": "default"]
        
        let push = PFPush()
        
        push.setData(data)
        push.setQuery(pushQuery)
        
        
        push.sendPushInBackgroundWithBlock {
            success, error in
            
            if success {
                print("The push succeeded.")
            } else {
                print("The push failed.")
            }
        }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
