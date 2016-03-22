//
//  SignUpViewController.swift
//  YaLaJeYe
//
//  Created by Joseph  on 12/17/15.
//  Copyright © 2015 Joseph hajjar. All rights reserved.
//

import UIKit
import Parse
import Bolts

class SignUpViewController: UIViewController,UITextFieldDelegate {

    /***************************************************************************************
     
        Sign up text Fields
     
    ***************************************************************************************/
    var kPreferredTextFieldToKeyboardOffset: CGFloat = 20.0
    var keyboardFrame: CGRect = CGRect.null
    var keyboardIsShowing: Bool = false
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var adressField: UITextField!
    @IBOutlet weak var fullNameTextField: YoshikoTextField!
   
    @IBOutlet weak var submitButtonOutlet: UIButton!
    
    var actInd : UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0,0, 150, 150)) as UIActivityIndicatorView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        submitButtonOutlet.layer.cornerRadius = 10 // this value vary as per your desire
        submitButtonOutlet.clipsToBounds = true
        
        //Set View controller's border
        self.view.layer.borderWidth = 3
        self.view.layer.borderColor = UIColor.redColor().CGColor
        
        self.actInd.center = self.view.center
        self.actInd.hidesWhenStopped = true
        self.actInd.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        view.addSubview(self.actInd)
        
       
        // Do any additional setup after loading the view.
    }
   
   
    
    @IBAction func textFieldDidReturn(textField: UITextField!)
    {
        textField.resignFirstResponder()
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismissButton(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }

    /**************************************************************************************
    
        Sign up submit Form
    
    ***************************************************************************************/
    @IBAction func submitButton(sender: AnyObject) {
        let username = self.userField.text
        let password = self.passwordField.text
        let adress = self.adressField.text
       let fullName = self.fullNameTextField.text
        
        if (username!.utf16.count < 4 || password!.utf16.count < 5) {
            
            let alert = UIAlertController(title: "Oops!", message: "Re-enter your password and username!", preferredStyle: .Alert)
            let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                print("Cancel Button Pressed")
            }
            let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                print("Ok Button Pressed")
            })
            alert.addAction(ok)
            alert.addAction(cancel)
            presentViewController(alert, animated: true, completion: nil)
            
            
        }else {
            
            self.actInd.startAnimating()
            
            let newUser = PFUser()
            newUser.username = username
            newUser.password = password
            newUser["adress"] = adress
            newUser["FullName"] = fullName
            
            
            
            newUser.signUpInBackgroundWithBlock({ (succeed, error) -> Void in
                
                self.actInd.stopAnimating()
                
                if ((error) != nil) {
                    
                    let alert = UIAlertController(title: "Oops!", message: "Please try again!", preferredStyle: .Alert)
                    let cancel = UIAlertAction(title: "Cancel", style: .Cancel) { (action) -> Void in
                        print("Cancel Button Pressed")
                    }
                    let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                        print("Ok Button Pressed")
                    })
                    alert.addAction(ok)
                    alert.addAction(cancel)
                    self.presentViewController(alert, animated: true, completion: nil)
                    
                }else {
                    self.performSegueWithIdentifier("backHome", sender: self)
                    let alert = UIAlertController(title: "Success!", message: "Signed Up.", preferredStyle: .Alert)
                    let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                        print("Ok Button Pressed")
                    })
                    alert.addAction(ok)
                   
                    self.presentViewController(alert, animated: true, completion: nil)
                   
                }
                
            })
            
        }
    }
}
