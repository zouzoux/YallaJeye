//
//  ViewController.swift
//  YaLaJeYe
//
//  Created by Joseph  on 12/16/15.
//  Copyright © 2015 Joseph hajjar. All rights reserved.
//

import UIKit
import Parse



class ViewController: UIViewController {
    

    
    
    @IBOutlet weak var giganet: UIButton!
    @IBOutlet weak var adminButton: UIButton!
        @IBOutlet weak var restoButton: UIButton!

    @IBOutlet weak var techrijButton: UIButton!
    @IBOutlet weak var superButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        restoButton.layer.cornerRadius = 10 // this value vary as per your desire
        restoButton.clipsToBounds = true
        
        techrijButton.layer.cornerRadius = 10 // this value vary as per your desire
        techrijButton.clipsToBounds = true
        
        superButton.layer.cornerRadius = 10 // this value vary as per your desire
        superButton.clipsToBounds = true
        
        adminButton.layer.cornerRadius = 10 // this value vary as per your desire
        adminButton.clipsToBounds = true
        
        
        giganet.layer.cornerRadius = 10 // this value vary as per your desire
        giganet.clipsToBounds = true
        
        if(PFUser.currentUser()?.username=="71968898" || PFUser.currentUser()?.username=="70313210"){
           adminButton.alpha = 1
        }
     

    }
    
  
    @IBAction func logout(sender: AnyObject) {
        PFUser.logOutInBackground()
        self.performSegueWithIdentifier("reset", sender: self)
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        /**********************************************************************************************************
            
            Fires Login System if no User is logged In
        
        **********************************************************************************************************/
        if (PFUser.currentUser() == nil) {
            print("No User is Logged In")
            self.performSegueWithIdentifier("login", sender: self)     
        }
        
    }
   
    
    
    @IBAction func goSuprmarket(sender: AnyObject) {
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

