//
//  FinalConfirmationViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 1/8/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit
import Bolts
import Parse
import CloudKit

class FinalConfirmationViewController: UIViewController {
    var finalItems: Array<String> = NSUserDefaults.standardUserDefaults().objectForKey("FinalItems") as! Array<String>
    var finalQItems: Array<String> = NSUserDefaults.standardUserDefaults().objectForKey("FinalQ") as! Array<String>
    var finalPrices: Array<Int> = NSUserDefaults.standardUserDefaults().objectForKey("FinalP") as! Array<Int>
    var finalTotal: Int = NSUserDefaults.standardUserDefaults().objectForKey("FinalS") as! Int
    var restoName: String = NSUserDefaults.standardUserDefaults().objectForKey("restoName") as! String
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var nowButton: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var laterButton: UIButton!

    var datePicker1 = UIDatePicker()
    
    @IBOutlet weak var textField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nowButton.layer.cornerRadius = 10 // this value vary as per your desire
        nowButton.clipsToBounds = true
        
        laterButton.layer.cornerRadius = 10 // this value vary as per your desire
        laterButton.clipsToBounds = true
        let query : PFQuery = PFUser.query()!
        query.whereKey("username", equalTo: (PFUser.currentUser()?.username)!)
        query.findObjectsInBackgroundWithBlock {
            (objects:[PFObject]?, error:NSError?) -> Void in
            for object in objects! {
                self.phoneNumberTextField.text = PFUser.currentUser()?.username
                let adress = object["adress"] as! String
                let fullName = object["FullName"] as! String
                self.addressTextField.text = adress
                self.nameTextField.text = fullName
            }
            
        }
        
        Parse.Cloud.useMasterKey();
        print(finalItems)
        setupDatePicker()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setupDatePicker() {
        // Sets up the "button"
        textField.text = "Pick a due date"
        textField.textAlignment = .Center
        
        // Removes the indicator of the UITextField
        textField.tintColor = UIColor.clearColor()
        
        // Specifies intput type
        datePicker1.datePickerMode = .DateAndTime
        
        // Creates the toolbar
        let toolBar = UIToolbar()
        toolBar.barStyle = .Default
        toolBar.translucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        // Adds the buttons
        let doneButton = UIBarButtonItem(title: "Done", style: .Plain, target: self, action: "doneClick")
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .FlexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .Plain, target: self, action: "cancelClick")
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.userInteractionEnabled = true
        
        // Adds the toolbar to the view
        textField.inputView = datePicker1
        textField.inputAccessoryView = toolBar
    }
    
    func doneClick() {
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "cccc, MMM d, hh:mm aa"
        //dateFormatter.dateStyle = .ShortStyle
        let dateString = dateFormatter.stringFromDate(datePicker1.date)
        let fullDate = dateString.characters.split{$0 == ","}.map(String.init)
        
        
        let supermarket : PFObject = PFObject(className: "supermarket")
        supermarket["name"] = self.nameTextField.text
        supermarket["Address"] = self.addressTextField.text
        supermarket["phoneNumber"] = self.phoneNumberTextField.text
        supermarket["Date"] = fullDate[0]+"," + fullDate[1]
        supermarket["Time"] = fullDate[2]
        let installation = PFInstallation.currentInstallation()
        installation["user"] = PFUser.currentUser()
        installation.saveInBackground()
        
        let userQuery: PFQuery = PFUser.query()!
        userQuery.whereKey("objectId", equalTo: "NDPQkBcQCL") // The user I am logged in with
        userQuery.whereKey("objectId", equalTo:"ZqgZ514Mwx")
        
        
        let pushQuery: PFQuery = PFInstallation.query()!
        pushQuery.whereKey("user", matchesQuery: userQuery)
        
        if let tName:String = self.nameTextField.text{
            if let roddress:String = self.addressTextField.text{
                if  let rPhone:String = self.phoneNumberTextField.text{
                    let data = [ "title": "Yalla Jeye",
                        "alert": "\(restoName) \(tName) \(roddress) \(rPhone)  \(finalItems) \(finalQItems) \(finalPrices) \(finalTotal)LL  \(dateString) ", "sound": "default"]
                    supermarket["Notification"] = "\(restoName) \(tName) \(roddress) \(rPhone)  \(finalItems) \(finalQItems) \(finalPrices) \(finalTotal)LL  \(dateString) "
                    let push = PFPush()
                    push.setQuery(pushQuery)
                    
                    push.setData(data)
                    
                    
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
        }

        
        let alert = UIAlertController(title: "Yalla Jeye!!!!", message: "", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            print("Ok Button Pressed")
        })
        alert.addAction(ok)
        presentViewController(alert, animated: true, completion: nil)
        
        
        
        supermarket.saveInBackground()
        textField.resignFirstResponder()
        
    }
    
    func cancelClick() {
        textField.resignFirstResponder()
    }

    
    @IBAction func submitNow(sender: AnyObject) {
        let date = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let components = calendar.components( [.Day, .Month, .Year], fromDate: date)
        let day = components.day
        let month = components.month
        let year = components.year
        
        let dateString = String(day) + " " + " " + String(month) + " " + String(year)
        
        let supermarket : PFObject = PFObject(className: "supermarket")
        supermarket["name"] = self.nameTextField.text
        supermarket["Address"] = self.addressTextField.text
        supermarket["phoneNumber"] = self.phoneNumberTextField.text
        supermarket["Date"] = dateString
        supermarket["Time"] = "Now"
        
        
        let installation = PFInstallation.currentInstallation()
        installation["user"] = PFUser.currentUser()
        installation.saveInBackground()
        
        let userQuery: PFQuery = PFUser.query()!
        userQuery.whereKey("objectId", equalTo: "NDPQkBcQCL")
        userQuery.whereKey("objectId", equalTo:"ZqgZ514Mwx")// The user I am logged in with
        
        let pushQuery: PFQuery = PFInstallation.query()!
        pushQuery.whereKey("user", matchesQuery: userQuery)
        
        if let tName:String = self.nameTextField.text{
            if let roddress:String = self.addressTextField.text{
                if  let rPhone:String = self.phoneNumberTextField.text{
                    let data = [ "title": "Yalla Jeye",
                        "alert": "\(restoName) \(tName) \(roddress) \(rPhone)  \(finalItems) \(finalQItems) \(finalPrices) \(finalTotal)LL Now! ", "sound": "default"]
                    supermarket["Notification"] = "\(restoName) \(tName) \(roddress) \(rPhone)  \(finalItems) \(finalQItems) \(finalPrices) \(finalTotal)LL Now! "
                    let push = PFPush()
                    push.setQuery(pushQuery)
                    
                    push.setData(data)
                    
                    
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
                    }
       
                let alert = UIAlertController(title: "Yalla Jeye!!!!", message: "", preferredStyle: .Alert)
        let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
            print("Ok Button Pressed")
        })
        alert.addAction(ok)
        presentViewController(alert, animated: true, completion: nil)
        
        supermarket.saveInBackground()
        
    }
   
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }

@IBAction func submitLater(sender: AnyObject) {
}


}
