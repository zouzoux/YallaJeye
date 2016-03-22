//
//  SuperMarketViewController.swift
//  YaLaJeYe
//
//  Created by Joseph  on 12/22/15.
//  Copyright © 2015 Joseph hajjar. All rights reserved.
//

import UIKit
import Parse
import Bolts

class SuperMarketViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.redColor()
        continueButton.layer.cornerRadius = 10 // this value vary as per your desire
        continueButton.clipsToBounds = true
        
        
  
        
        let query : PFQuery = PFUser.query()!
        query.whereKey("username", equalTo: (PFUser.currentUser()?.username)!)
        query.findObjectsInBackgroundWithBlock {
            (objects:[PFObject]?, error:NSError?) -> Void in
            if(error==nil){
            for object in objects! {
                self.phoneNumberTextField.text = PFUser.currentUser()?.username
              let adress = object["adress"] as! String
              let fullName = object["FullName"] as! String
                self.addressTextField.text = adress
                self.nameTextField.text = fullName
            }
            }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func submitInfos(sender: AnyObject) {
        let name = nameTextField.text
        let address = addressTextField.text
        let phoneNumber = phoneNumberTextField.text
        
        
        
        NSUserDefaults.standardUserDefaults().setObject(name, forKey: "name")
        NSUserDefaults.standardUserDefaults().setObject(address, forKey: "address")
        NSUserDefaults.standardUserDefaults().setObject(phoneNumber, forKey: "phoneNumber")
        
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }
  

}
