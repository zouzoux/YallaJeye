//
//  FalafelViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 1/17/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class FalafelViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var confirmB: UIBarButtonItem!
    @IBOutlet weak var navBar: UINavigationItem!
    var sectionTitleArray : NSMutableArray = NSMutableArray()
    var sectionContentDict : NSMutableDictionary = NSMutableDictionary()
    var arrayForBool : NSMutableArray = NSMutableArray()
    var isChecked: Bool = false
    var arrowImage: UIImageView = UIImageView()
    var textfieldContents: [String] = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
    var reset: Bool = false
    var checkStatus = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
    
    let allItems: [String] = ["Sandwich Falefil","Falefil bi Khebez mar2ou2","Dazinet Falefil bala khodra","Dazinet Falefil ma3 khodra","3elbit tarator","Pepsi","Mirinda","Seven up"]
    
    
    
    let allPrices: [Int] = [2500,3000,6000,12000,2000,1000,1000,1000]

    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        super.viewDidLoad()
        
        
        
        arrayForBool = ["0"]
        
        sectionTitleArray  = ["Falefil el Beyt"]
        
        let tmp1: NSArray = ["Sandwich Falefil","Falefil bi Khebez mar2ou2","Dazinet Falefil bala khodra","Dazinet Falefil ma3 khodra","3elbit tarator","Pepsi","Mirinda","Seven up"]
        
        
        
        let tmp1d: NSArray = ["","","","","","","","","","","","","",""]
        
        
        
        let tmp1Prices: NSArray = [2500,3000,6000,12000,2000,1000,1000,1000]
        
        
        
        var string1 = sectionTitleArray .objectAtIndex(0) as? String
        
        var price1 = "LL"
        
        
        var descr = "d"
        descr += (sectionTitleArray .objectAtIndex(0) as? String)!
        price1 += (sectionTitleArray .objectAtIndex(0) as? String)!
        [sectionContentDict .setValue(tmp1, forKey:string1! )]
        [sectionContentDict .setValue(tmp1Prices, forKey:price1 )]
        [sectionContentDict .setValue(tmp1d, forKey: descr)]
        
        
        
        
        
        textfieldContents = ["","","","","","","",""]
        print(textfieldContents.count)
        
        tableView.allowsSelection = false
        
        let barFont = UIFont (name: "Babiole", size: 20)
        
        
        navigationController!.navigationBar.barTintColor = UIColor.redColor()
        confirmB.setTitleTextAttributes([NSFontAttributeName: barFont!, NSForegroundColorAttributeName:UIColor.whiteColor()], forState: UIControlState.Normal)
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        
        
    }
    
    @IBAction func testMe(sender: AnyObject) {
        print("push me")
    }
    
    @IBAction func checkBoxPressed(sender: CheckboxButton) {
        sender.selected = !sender.selected
        
        if(sender.selected == true){
            self.checkStatus[sender.tag] = true
        }else{
            self.checkStatus[sender.tag] = false
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sectionTitleArray.count
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        if(arrayForBool .objectAtIndex(section).boolValue == true)
        {
            let tps = sectionTitleArray.objectAtIndex(section) as! String
            let count1 = (sectionContentDict.valueForKey(tps)) as! NSArray
            return count1.count
        }
        return 0;
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "ABC"
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        
        return 89
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if(arrayForBool .objectAtIndex(indexPath.section).boolValue == true){
            return 90
        }
        
        return 2;
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView(frame: CGRectMake(0, 0, tableView.frame.size.width, 40))
        headerView.backgroundColor = UIColor.whiteColor()
        headerView.tag = section
        let imageName = "AccordionIcon.png"
        let image = UIImage(named: imageName)
        
        let headerString = UILabel(frame: CGRect(x: 30, y: 10, width: tableView.frame.size.width-10, height: 30)) as UILabel
        
        self.arrowImage = UIImageView(image: image!)
        
        self.arrowImage.frame = CGRect(x: 6, y: 12, width: 20, height: 20)
        
        headerString.text = sectionTitleArray.objectAtIndex(section) as? String
        headerString.textColor = UIColor.redColor()
        headerString.font = UIFont (name: "Babiole", size: 20)
        
        
        headerView .addSubview(headerString)
        headerView .addSubview(self.arrowImage)
        
        let headerTapped = UITapGestureRecognizer (target: self, action:"sectionHeaderTapped:")
        headerView .addGestureRecognizer(headerTapped)
        
        return headerView
    }
    
    func sectionHeaderTapped(recognizer: UITapGestureRecognizer) {
        print("Tapping working")
        print(recognizer.view?.tag)
        
        
        let indexPath : NSIndexPath = NSIndexPath(forRow: 0, inSection:(recognizer.view?.tag as Int!)!)
        if (indexPath.row == 0) {
            
            if var collapsed = arrayForBool .objectAtIndex(indexPath.section).boolValue{
                collapsed       = !collapsed;
                
                print(collapsed)
                self.arrowImage.transform = !collapsed ? CGAffineTransformMakeRotation(CGFloat(M_PI)) : CGAffineTransformIdentity
                
                
                
                
                arrayForBool .replaceObjectAtIndex(indexPath.section, withObject: collapsed)
                //reload specific section animated
                let range = NSMakeRange(indexPath.section, 1)
                let sectionToReload = NSIndexSet(indexesInRange: range)
                self.tableView .reloadSections(sectionToReload, withRowAnimation:UITableViewRowAnimation.Fade)
            }
        }
        
        
    }
    
    
    
    
    
    @IBAction func confirmButton(sender: AnyObject) {
        
        print(checkStatus)
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
                }
                else{
                    itemsQTobeSent += [textfieldContents[index]]
                }
                itemsPrices += [allPrices[index]]
                
                
            }
            
        }
        
        NSUserDefaults.standardUserDefaults().setObject(itemsTobeSend, forKey: "contents")
        NSUserDefaults.standardUserDefaults().setObject(itemsQTobeSent, forKey: "Quantity")
        NSUserDefaults.standardUserDefaults().setObject(itemsPrices, forKey: "Prices")
        NSUserDefaults.standardUserDefaults().setObject("Falafel El Beit", forKey: "restoName")
        
        
        self.performSegueWithIdentifier("Confirm", sender: self)
        
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> CustomDipNDipCellTableViewCell{
        
        let CellIdentifier = "CustomCell"
        var cell :CustomDipNDipCellTableViewCell
        cell = self.tableView.dequeueReusableCellWithIdentifier(CellIdentifier,forIndexPath: indexPath) as! CustomDipNDipCellTableViewCell
        
        let manyCells : Bool = arrayForBool .objectAtIndex(indexPath.section).boolValue
        
        if (!manyCells) {
            //  cell.textLabel.text = @"click to enlarge";
        }
        else{
            cell.quanTextField.keyboardType = UIKeyboardType.NumberPad
            let content = sectionContentDict .valueForKey(sectionTitleArray.objectAtIndex(indexPath.section) as! String) as! NSArray
            var key = "LL"
            var keyd = "d"
            keyd += sectionTitleArray.objectAtIndex(indexPath.section) as! String
            key += sectionTitleArray.objectAtIndex(indexPath.section) as! String
            print(keyd)
            
            let contentPrice = sectionContentDict .valueForKey(key) as! NSArray
            let contentDesc = sectionContentDict .valueForKey(keyd) as! NSArray
            cell.labelFool?.text = content .objectAtIndex(indexPath.row) as? String
            let descString = contentDesc .objectAtIndex(indexPath.row) as? String
            print(descString)
            cell.describeLabel?.text = descString
            let pricesN = contentPrice.objectAtIndex(indexPath.row)
            var prices = String(pricesN)
            prices += " LL"
            cell.priceLabel.text = prices
            
            //Assign to each textfield a tag int depending on its row position
            cell.quanTextField.delegate = self
            cell.quanTextField.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControlEvents.EditingChanged)
            cell.quanTextField.addObserver(self, forKeyPath: "text", options: NSKeyValueObservingOptions.New, context: nil)
            
            
            
            
        }
        
        if indexPath.section == 0 && indexPath.row == 0{
            cell.quanTextField.tag = 0 //Assign to each textfield a tag int depending on its row position
            cell.quanTextField.text = textfieldContents[0]
            cell.checkBox.tag = 0
            cell.checkBox.selected = checkStatus[0]
            
            
            
        }
        if indexPath.section == 0 && indexPath.row == 1{
            cell.quanTextField.tag = 1
            cell.quanTextField.text = textfieldContents[1]
            cell.checkBox.tag = 1
            cell.checkBox.selected = checkStatus[1]
        }
        if indexPath.section == 0 && indexPath.row == 2{
            cell.quanTextField.tag = 2
            cell.quanTextField.text = textfieldContents[2]
            cell.checkBox.tag = 2
            cell.checkBox.selected = checkStatus[2]
            
        }
        if indexPath.section == 0 && indexPath.row == 3{
            cell.quanTextField.tag = 3
            cell.quanTextField.text = textfieldContents[3]
            cell.checkBox.tag = 3
            cell.checkBox.selected = checkStatus[3]
            
        }
        if indexPath.section == 0 && indexPath.row == 4{
            cell.quanTextField.tag = 4
            cell.quanTextField.text = textfieldContents[4]
            cell.checkBox.tag = 4
            cell.checkBox.selected = checkStatus[4]
            
        }
        if indexPath.section == 0 && indexPath.row == 5{
            cell.quanTextField.tag = 5
            cell.quanTextField.text = textfieldContents[5]
            cell.checkBox.tag = 5
            cell.checkBox.selected = checkStatus[5]
            
        }
        if indexPath.section == 0 && indexPath.row == 6{
            cell.quanTextField.tag = 6
            cell.quanTextField.text = textfieldContents[6]
            cell.checkBox.tag = 6
            cell.checkBox.selected = checkStatus[6]
            
        }
        if indexPath.section == 0 && indexPath.row == 7{
            cell.quanTextField.tag = 7
            cell.quanTextField.text = textfieldContents[7]
            cell.checkBox.tag = 7
            cell.checkBox.selected = checkStatus[7]
            
        }
        
        
        
        return cell    }
    
    
    func textFieldDidChange(textField: UITextField) {
        print(textField.tag)
        
        textfieldContents[textField.tag] = textField.text!
        
        NSUserDefaults.standardUserDefaults().setObject(textfieldContents, forKey: "contents")
        print("changeee")
        
    }
    
    override func observeValueForKeyPath(keyPath: String?, ofObject object: AnyObject?, change: [String : AnyObject]?, context: UnsafeMutablePointer<Void>) {
        
        if(keyPath=="text"){
            textFieldDidChange(object as! UITextField)
        }
    }
    

}