//
//  CustomDipNDipCellTableViewCell.swift
//  YallaJeye
//
//  Created by Joseph  on 1/3/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class CustomDipNDipCellTableViewCell: UITableViewCell, UITextFieldDelegate,KWStepperDelegate {
    
    
    var stepper : KWStepper!
    @IBOutlet weak var labelFool: UILabel!
    @IBOutlet weak var incrementButton: UIButton!
    @IBOutlet weak var checkBox: CheckboxButton!
    @IBOutlet weak var decrementButton: UIButton!
    @IBOutlet weak var quanTextField: UITextField!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var describeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureStepper()
        quanTextField.userInteractionEnabled = false
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        // Configure the view for the selected state
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
            self.quanTextField.text = String(format: "%.f", self.stepper.value)
        }
        
        stepper.decrementCallback = {
            print("decrementCallback: The stepper did decrement \n")
        }
        
        stepper.incrementCallback = {
            print("incrementCallback: The stepper did increment \n")
            print(self.stepper.value)
        }
    }
    
    
}

