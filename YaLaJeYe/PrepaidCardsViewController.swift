//
//  PrepaidCardsViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 2/5/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class PrepaidCardsViewController: UIViewController, UITextFieldDelegate,KWStepperDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    var stepper : KWStepper!
    var stepper2: KWStepper!
    var stepper3: KWStepper!
    var stepper4: KWStepper!
    var stepper5: KWStepper!
    var textfieldContents: [String] = ["1","1","1","1","1"]
    @IBOutlet weak var textF5: UITextField!
    @IBOutlet weak var textF4: UITextField!
    @IBOutlet weak var textF3: UITextField!
    @IBOutlet weak var textF2: UITextField!
    @IBOutlet weak var textF1: UITextField!
    @IBOutlet weak var incrementButton3: UIButton!
    @IBOutlet weak var decrementButton3: UIButton!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var incrementButton2: UIButton!
    @IBOutlet weak var decrementButton2: UIButton!
    @IBOutlet weak var incrementButton4: UIButton!
    @IBOutlet weak var decrementButton4: UIButton!
    @IBOutlet weak var incrementButton5: UIButton!
    @IBOutlet weak var decrementButton5: UIButton!
    
    let allItems: Array<String> = ["Alfa card 3.64$","Alfa Card 9$","Alfa Card 22$","Touch Card 11$","Touch Card 22$"]
    
    let allPrices: Array<Int> = [7000,16000,40000,20000,40000]
     var checkStatus = [false,false,false,false,false]
    
    @IBOutlet weak var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
confirmButton.titleLabel!.font =  UIFont(name: "Babiole", size: 20)
        configureStepper()
        configureStepper2()
        configureStepper3()
        configureStepper4()
        configureStepper5()
        
        scrollView.contentSize.height = 760
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func configureStepper() {
        // https://github.com/kyleweiner/KWStepper#usage
        stepper = KWStepper(
            decrementButton: decrementButton,
            incrementButton: incrementButton)
        
        // https://github.com/kyleweiner/KWStepper#configuring-kwstepper
        stepper.autoRepeat = false
        stepper.autoRepeatInterval = 0.10
        stepper.wraps = true
        stepper.minimumValue = 0
        stepper.maximumValue = 10
        stepper.value = 0
        stepper.incrementStepValue = 1
        stepper.decrementStepValue = 1
        
        // Adopting KWStepperDelegate provides optional methods for tailoring the UX.
        // https://github.com/kyleweiner/KWStepper#kwstepperdelegate
        stepper.delegate = self
        
        // Callbacks (closures) offer an alternative to the KWStepperDelegate protocol.
        // https://github.com/kyleweiner/KWStepper#callbacks
        stepper.valueChangedCallback = {
            self.textF1.text = String(format: "%.f", self.stepper.value)
        }
        
        stepper.decrementCallback = {
            print("decrementCallback: The stepper did decrement \n")
            var quanInt: Int = Int(self.stepper.value)
            var quanString: String = String(quanInt)
            self.textfieldContents[0] = quanString
        }
        
        stepper.incrementCallback = {
            print("incrementCallback: The stepper did increment \n")
            var quanInt: Int = Int(self.stepper.value)
            var quanString: String = String(quanInt)
            self.textfieldContents[0] = quanString
        }
    }

    func configureStepper2() {
        // https://github.com/kyleweiner/KWStepper#usage
        stepper2 = KWStepper(
            decrementButton: decrementButton2,
            incrementButton: incrementButton2)
        
        // https://github.com/kyleweiner/KWStepper#configuring-kwstepper
        stepper2.autoRepeat = false
        stepper2.autoRepeatInterval = 0.10
        stepper2.wraps = true
        stepper2.minimumValue = 0
        stepper2.maximumValue = 10
        stepper2.value = 0
        stepper2.incrementStepValue = 1
        stepper2.decrementStepValue = 1
        
        // Adopting KWStepperDelegate provides optional methods for tailoring the UX.
        // https://github.com/kyleweiner/KWStepper#kwstepperdelegate
        stepper2.delegate = self
        
        // Callbacks (closures) offer an alternative to the KWStepperDelegate protocol.
        // https://github.com/kyleweiner/KWStepper#callbacks
        stepper2.valueChangedCallback = {
            self.textF2.text = String(format: "%.f", self.stepper2.value)
        }
        
        stepper2.decrementCallback = {
            print("decrementCallback: The stepper did decrement \n")
            var quanInt: Int = Int(self.stepper2.value)
            var quanString: String = String(quanInt)
            self.textfieldContents[1] = quanString
        }
        
        stepper2.incrementCallback = {
            print("incrementCallback: The stepper did increment \n")
            var quanInt: Int = Int(self.stepper2.value)
            var quanString: String = String(quanInt)
            self.textfieldContents[1] = quanString
        }
    }

    func configureStepper3() {
        // https://github.com/kyleweiner/KWStepper#usage
        stepper3 = KWStepper(
            decrementButton: decrementButton3,
            incrementButton: incrementButton3)
        
        // https://github.com/kyleweiner/KWStepper#configuring-kwstepper
        stepper3.autoRepeat = false
        stepper3.autoRepeatInterval = 0.10
        stepper3.wraps = true
        stepper3.minimumValue = 0
        stepper3.maximumValue = 10
        stepper3.value = 0
        stepper3.incrementStepValue = 1
        stepper3.decrementStepValue = 1
        
        // Adopting KWStepperDelegate provides optional methods for tailoring the UX.
        // https://github.com/kyleweiner/KWStepper#kwstepperdelegate
        stepper3.delegate = self
        
        // Callbacks (closures) offer an alternative to the KWStepperDelegate protocol.
        // https://github.com/kyleweiner/KWStepper#callbacks
        stepper3.valueChangedCallback = {
            self.textF3.text = String(format: "%.f", self.stepper3.value)
        }
        
        stepper3.decrementCallback = {
            print("decrementCallback: The stepper did decrement \n")
            var quanInt: Int = Int(self.stepper3.value)
            var quanString: String = String(quanInt)
            self.textfieldContents[2] = quanString

        }
        
        stepper3.incrementCallback = {
            print("incrementCallback: The stepper did increment \n")
            var quanInt: Int = Int(self.stepper3.value)
            var quanString: String = String(quanInt)
            self.textfieldContents[2] = quanString

        }
    }
    
    func configureStepper4() {
        // https://github.com/kyleweiner/KWStepper#usage
        stepper4 = KWStepper(
            decrementButton: decrementButton4,
            incrementButton: incrementButton4)
        
        // https://github.com/kyleweiner/KWStepper#configuring-kwstepper
        stepper4.autoRepeat = false
        stepper4.autoRepeatInterval = 0.10
        stepper4.wraps = true
        stepper4.minimumValue = 0
        stepper4.maximumValue = 10
        stepper4.value = 0
        stepper4.incrementStepValue = 1
        stepper4.decrementStepValue = 1
        
        // Adopting KWStepperDelegate provides optional methods for tailoring the UX.
        // https://github.com/kyleweiner/KWStepper#kwstepperdelegate
        stepper4.delegate = self
        
        // Callbacks (closures) offer an alternative to the KWStepperDelegate protocol.
        // https://github.com/kyleweiner/KWStepper#callbacks
        stepper4.valueChangedCallback = {
            self.textF4.text = String(format: "%.f", self.stepper4.value)
        }
        
        stepper4.decrementCallback = {
            print("decrementCallback: The stepper did decrement \n")
            var quanInt: Int = Int(self.stepper4.value)
            var quanString: String = String(quanInt)
            self.textfieldContents[3] = quanString
            
            print(self.textfieldContents[3])
        }
        
        stepper4.incrementCallback = {
            print("incrementCallback: The stepper did increment \n")
            var quanInt: Int = Int(self.stepper4.value)
            var quanString: String = String(quanInt)
            self.textfieldContents[3] = quanString
    
            print(self.textfieldContents[3])
    
        }
    }
    func configureStepper5() {
        // https://github.com/kyleweiner/KWStepper#usage
        stepper5 = KWStepper(
            decrementButton: decrementButton5,
            incrementButton: incrementButton5)
        
        // https://github.com/kyleweiner/KWStepper#configuring-kwstepper
        stepper5.autoRepeat = false
        stepper5.autoRepeatInterval = 0.10
        stepper5.wraps = true
        stepper5.minimumValue = 0
        stepper5.maximumValue = 10
        stepper5.value = 0
        stepper5.incrementStepValue = 1
        stepper5.decrementStepValue = 1
        
        // Adopting KWStepperDelegate provides optional methods for tailoring the UX.
        // https://github.com/kyleweiner/KWStepper#kwstepperdelegate
        stepper.delegate = self
        
        // Callbacks (closures) offer an alternative to the KWStepperDelegate protocol.
        // https://github.com/kyleweiner/KWStepper#callbacks
        stepper5.valueChangedCallback = {
            self.textF5.text = String(format: "%.f", self.stepper5.value)
        }
        
        stepper5.decrementCallback = {
            print("decrementCallback: The stepper did decrement \n")
            var quanInt: Int = Int(self.stepper5.value)
            var quanString: String = String(quanInt)
            self.textfieldContents[4] = quanString
        }
        
        stepper5.incrementCallback = {
            print("incrementCallback: The stepper did increment \n")
            var quanInt: Int = Int(self.stepper5.value)
            var quanString: String = String(quanInt)
            self.textfieldContents[4] = quanString

        }
    }


    @IBAction func checkBoxPressed(sender: CheckboxButton) {
        sender.selected = !sender.selected
        if(sender.selected == true){
            self.checkStatus[0] = true
        }else{
            self.checkStatus[0] = false
        }
    }
    
    @IBAction func checkBoxPressed1(sender: CheckboxButton) {
        sender.selected = !sender.selected
        if(sender.selected == true){
            self.checkStatus[1] = true
        }else{
            self.checkStatus[1] = false
        }
    }
    
    @IBAction func checkBoxPressed2(sender: CheckboxButton) {
        sender.selected = !sender.selected
        if(sender.selected == true){
            self.checkStatus[2] = true
        }else{
            self.checkStatus[2] = false
        }
    }
    
    @IBAction func checkBoxPressed3(sender: CheckboxButton) {
        sender.selected = !sender.selected
        if(sender.selected == true){
            self.checkStatus[3] = true
        }else{
            self.checkStatus[3] = false
        }
    }
    
    @IBAction func checkBoxPressed4(sender: CheckboxButton) {
        sender.selected = !sender.selected
        if(sender.selected == true){
            self.checkStatus[4] = true
        }else{
            self.checkStatus[4] = false
        }
    }
    @IBAction func Confirm(sender: AnyObject) {
        var itemsTobeSend: Array<String> = []
        var itemsQTobeSent: Array<String> = []
        var itemsPrices: Array<Int> = []
        
        for (index,elem) in checkStatus.enumerate(){
            if (elem == true){
                itemsTobeSend += [allItems[index]]
                if(textfieldContents[index] == ""){
                    textfieldContents[index] = "1"
                    itemsQTobeSent += [textfieldContents[index]]
                }else if(textfieldContents[index] == "0"){
                    textfieldContents[index] = "1"
                    itemsQTobeSent += [textfieldContents[index]]
                }else{
                    itemsQTobeSent += [textfieldContents[index]]
                }
                itemsPrices += [allPrices[index]]
                
            }
        }
        NSUserDefaults.standardUserDefaults().setObject(itemsTobeSend, forKey: "contents")
        NSUserDefaults.standardUserDefaults().setObject(itemsQTobeSent, forKey: "Quantity")
        NSUserDefaults.standardUserDefaults().setObject(itemsPrices, forKey: "Prices")
        NSUserDefaults.standardUserDefaults().setObject("Prepaid Cards", forKey: "restoName")
        
        
        self.performSegueWithIdentifier("Confirm", sender: self)

    }
}
