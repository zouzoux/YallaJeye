//
//  LoginViewController.swift
//  YaLaJeYe
//
//  Created by Joseph  on 12/17/15.
//  Copyright © 2015 Joseph hajjar. All rights reserved.
//

import UIKit
import Parse
import Bolts

class LoginViewController: UIViewController,UITextFieldDelegate {
    /***************************************************************************************
     
     Log in text Fields
     
     ***************************************************************************************/
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    @IBOutlet weak var signUpButtonOutlet: UIButton!
    
    var actInd : UIActivityIndicatorView = UIActivityIndicatorView(frame: CGRectMake(0,0, 150, 150)) as UIActivityIndicatorView
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButtonOutlet.layer.cornerRadius = 10 // this value vary as per your desire
        loginButtonOutlet.clipsToBounds = true
        
        signUpButtonOutlet.layer.cornerRadius = 10 // this value vary as per your desire
        signUpButtonOutlet.clipsToBounds = true

         //Set View controller's border
         self.view.layer.borderWidth = 3
         self.view.layer.borderColor = UIColor.redColor().CGColor
        
        self.actInd.center = self.view.center
        self.actInd.hidesWhenStopped = true
        self.actInd.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        view.addSubview(self.actInd)
        self.userField.delegate = self
        self.passwordField.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
   
    func textFieldShouldReturn(textField: UITextField) -> Bool // called when 'return' key pressed. return NO to ignore.
    {
        textField.resignFirstResponder()
        return true;
    }
    
    /***********************************************************

        Actions (Login and Sign Up)
    
    ************************************************************/
    
    @IBAction func loginAction(sender: AnyObject) {
        var username = self.userField.text
        var password = self.passwordField.text
        
        if (username!.utf16.count < 4 || password!.utf16.count < 5) {
            
            var alert = UIAlertView(title: "Invalid", message: "Username must be greater then 4 and Password must be greater then 5", delegate: self, cancelButtonTitle: "OK")
            alert.show()
            
        }else {
            
            self.actInd.startAnimating()
            
            PFUser.logInWithUsernameInBackground(username!, password: password!, block: { (user, error) -> Void in
                
                self.actInd.stopAnimating()
                
                if ((user) != nil) {
                  self.dismissViewControllerAnimated(true, completion: nil)
                    
                }else {
                    
                    let alert = UIAlertView(title: "Oops!Try again.", message: "The username or password might be incorrect!", delegate: self, cancelButtonTitle: "OK")
                    alert.show()
                    
                }
                
            })
            
        }
        
    }
 
    @IBAction func SignUpAction(sender: AnyObject) {
        self.performSegueWithIdentifier("signUp", sender: self)
    }
    
    /************************************************************
    
    
    ************************************************************/
}
