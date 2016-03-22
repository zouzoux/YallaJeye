//
//  SuperMarketOrderViewController.swift
//  YaLaJeYe
//
//  Created by Joseph  on 12/22/15.
//  Copyright © 2015 Joseph hajjar. All rights reserved.
//

import UIKit
import Parse
import Bolts

class SuperMarketOrderViewController: UIViewController,UIPickerViewDelegate {

    @IBOutlet weak var orderDetailsTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var textField: UITextField!
    var name: String = ""
    var address:String = ""
    var phoneNumber:String = ""
    var datePicker1 = UIDatePicker()
    
    @IBOutlet weak var nowButton: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var laterButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.name = NSUserDefaults.standardUserDefaults().objectForKey("name") as! String
        self.address = NSUserDefaults.standardUserDefaults().objectForKey("address") as! String
        self.phoneNumber = NSUserDefaults.standardUserDefaults().objectForKey("phoneNumber") as! String
        
        print(name)
        print(address)
        print(phoneNumber)
        
        nowButton.layer.cornerRadius = 10 // this value vary as per your desire
        nowButton.clipsToBounds = true
        
        laterButton.layer.cornerRadius = 10 // this value vary as per your desire
        laterButton.clipsToBounds = true
      
      
        
        setupDatePicker()
    
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
        toolBar.tintColor = UIColor.redColor()
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
        supermarket["name"] = self.name
        supermarket["Address"] = self.address
        supermarket["phoneNumber"] = self.phoneNumber
        supermarket["Date"] = fullDate[0]+"," + fullDate[1]
        supermarket["Time"] = fullDate[2]
        
        let userQuery: PFQuery = PFUser.query()!
        userQuery.whereKey("objectId", equalTo: "NDPQkBcQCL")
        userQuery.whereKey("objectId",  equalTo:"ZqgZ514Mwx")// The user I am logged in with
        
        let pushQuery: PFQuery = PFInstallation.query()!
        pushQuery.whereKey("user", matchesQuery: userQuery)
        
        if let tName:String = self.name{
            if let roddress:String = self.address{
                if  let rPhone:String = self.phoneNumber{
                    if let location:String = self.locationTextField.text{
                        if let items:String = self.orderDetailsTextField.text{
                            let data = [ "title": "Yalla Jeye",
                                "alert": "\(location) \(tName) \(roddress) \(rPhone)  \(items)  \(dateString)", "sound": "default"]
                            supermarket["Notification"] = "\(location) \(tName) \(roddress) \(rPhone)  \(items)  \(dateString) "
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
        supermarket["name"] = self.name
        supermarket["Address"] = self.address
        supermarket["phoneNumber"] = self.phoneNumber
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
        
        if let tName:String = self.name{
            if let roddress:String = self.address{
                if  let rPhone:String = self.phoneNumber{
                    if let location:String = self.locationTextField.text{
                        if let items:String = self.orderDetailsTextField.text{
                    let data = [ "title": "Yalla Jeye",
                        "alert": "\(location) \(tName) \(roddress) \(rPhone)  \(items)  Now! ", "sound": "default"]
                    supermarket["Notification"] = "\(location) \(tName) \(roddress) \(rPhone)  \(items)  Now! "
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

    
}
