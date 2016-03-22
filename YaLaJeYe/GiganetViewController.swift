//
//  GiganetViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 3/6/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class GiganetViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var planTextField: UITextField!
    var plan = ["2Mb 40GB 22$", "4Mb 15GB 22$ +Free Time", "4Mb 25GB 33$ +Free Time","4Mb 30GB 38$ +Free Time","4Mb 40GB 28$","4Mb 60GB 40$","6Mb 15GB 28$","6Mb 25GB 40$","6Mb 45GB 60$","8Mb 80GB 80$","12Mb 100GB 95$","1.5Mb Unlimited 36$","2Mb Unlimited 42$","3Mb Unlimited 50$","4Mb Unlimited 58$","8Mb Unlimited 165$"]
    var allPrice: Array<Int> = [34000,34000,50000,58000,43000,61000,43000,61000,68000,121000,144000,55000,64000,76000,88000,250000]
    var lastTag: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let picker = UIPickerView()
       
        picker.delegate   = self
        picker.dataSource = self
        
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
        
        self.planTextField.inputView = picker
        self.planTextField.inputAccessoryView = toolBar
        planTextField.text = plan[0]

        // Do any additional setup after loading the view.
    }
    
    func cancelClick() {
        planTextField.resignFirstResponder()
    }
    
    func doneClick() {
        planTextField.resignFirstResponder()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int{
        return 1
    }
    
    // returns the # of rows in each component..
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int{
        return plan.count
    }
    
    func pickerView(pickerView: UIPickerView!, titleForRow row: Int, forComponent component: Int) -> String! {
        return plan[row]
    }
    
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int)
    {
        planTextField.text = plan[row]
        lastTag = row
        
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
    
        print("textField selected")
        
        return false
        
    }
    
    @IBAction func confirmButton(sender: AnyObject) {
        var itemsTobeSend: Array<String> = [""]
        var itemsQTobeSent: Array<String> = [""]
        var itemsPrices: Array<Int> = [0]
        
         itemsTobeSend[0] = self.planTextField.text!
         itemsQTobeSent[0] = "1"
         itemsPrices[0] = allPrice[lastTag]
        
        NSUserDefaults.standardUserDefaults().setObject(itemsTobeSend, forKey: "contents")
        NSUserDefaults.standardUserDefaults().setObject(itemsQTobeSent, forKey: "Quantity")
        NSUserDefaults.standardUserDefaults().setObject(itemsPrices, forKey: "Prices")
        NSUserDefaults.standardUserDefaults().setObject("Giganet", forKey: "restoName")
        
        self.performSegueWithIdentifier("Confirm", sender: self)
        
        
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
