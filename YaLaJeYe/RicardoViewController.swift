//
//  RicardoViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 1/7/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class RicardoViewController: UIViewController, UITextFieldDelegate {

    var sectionTitleArray : NSMutableArray = NSMutableArray()
    var sectionContentDict : NSMutableDictionary = NSMutableDictionary()
    var arrayForBool : NSMutableArray = NSMutableArray()
    var isChecked: Bool = false
    var textfieldContents: [String] = ["","","","", "","","","","","","","","",""]
    var arrowImage: UIImageView = UIImageView()
    var reset: Bool = false
    var checkStatus = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
    
    let allItems: Array<String> = ["Philadelphia(Steak, mushroom, onions, cheese)","Spanish Steak(Steak, onions, cheese, special sauce)","Francisco(Chicken,corn,lettuce,tomato,sauce)","Hamburger(Meat,lettuce,tomato,fries,sauce)","Hamburger(Add: Bacon, Cheese )","Shrimp(Shrimp, lettuce, sauce)","Calamari(Calamari, lettuce, sauce)","Roast Beef","Grilled chicken breast","Canarias(Chicken, mushroom, smoked bacon, cheese)","Mexican chicken","Ricky","Fajita","Pepsi","Mirinda", "7up","Water"]
    
    let allSections: Array<String> = ["Sandwiches","Soft drinks"]

    
    let allPrices: Array<Int> = [6000,6000,6000,5000,7000,7000,6000,6000,5000,6000,6000,6000,6000,1000,1000,1000,500]

    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayForBool = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"]
        sectionTitleArray = ["Sandwiches","Soft drinks"]
        let tmp1 : NSArray =  ["Philadelphia(Steak, mushroom, onions, cheese)","Spanish Steak(Steak, onions, cheese, special sauce)","Francisco(Chicken,corn,lettuce,tomato,sauce)","Hamburger(Meat,lettuce,tomato,fries,sauce)","Hamburger(Add: Bacon, Cheese )","Shrimp(Shrimp, lettuce, sauce)","Calamari(Calamari, lettuce, sauce)","Roast Beef","Grilled chicken breast","Canarias(Chicken, mushroom, smoked bacon, cheese)","Mexican chicken","Ricky","Fajita"]

        let tmp2 : NSArray = ["Pepsi","Mirinda", "7up","Water"]
        
        
        
        let tmp1Prices: NSArray = [6000,6000,6000,5000,7000,7000,6000,6000,5000,6000,6000,6000,6000]

        let tmp2Prices: NSArray = [1000,1000,1000,500]
        
        
        var string1 = sectionTitleArray .objectAtIndex(0) as? String
        var price1 = "LL"
        price1 += (sectionTitleArray .objectAtIndex(0) as? String)!
        [sectionContentDict .setValue(tmp1, forKey:string1! )]
        [sectionContentDict .setValue(tmp1Prices, forKey:price1 )]
        
        price1 = "LL"
        price1 += (sectionTitleArray .objectAtIndex(1) as? String)!
        string1 = sectionTitleArray .objectAtIndex(1) as? String
        [sectionContentDict .setValue(tmp2, forKey:string1! )]
        [sectionContentDict .setValue(tmp2Prices, forKey:price1 )]
        
        tableView.allowsSelection = false
        
        textfieldContents =  ["","","","","","","","","","","","","","","","",""]

        
        
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
        headerView .addSubview(arrowImage)
        
        
        let headerTapped = UITapGestureRecognizer (target: self, action:"sectionHeaderTapped:")
        headerView .addGestureRecognizer(headerTapped)
        
        return headerView
    }
    
    func sectionHeaderTapped(recognizer: UITapGestureRecognizer) {
        print("Tapping working")
        print(recognizer.view?.tag)
        
        let indexPath : NSIndexPath = NSIndexPath(forRow: 0, inSection:(recognizer.view?.tag as Int!)!)
        if (indexPath.row == 0) {
            
            var collapsed = arrayForBool .objectAtIndex(indexPath.section).boolValue
            collapsed       = !collapsed;
            
            arrayForBool .replaceObjectAtIndex(indexPath.section, withObject: collapsed)
            //reload specific section animated
            let range = NSMakeRange(indexPath.section, 1)
            let sectionToReload = NSIndexSet(indexesInRange: range)
            self.tableView .reloadSections(sectionToReload, withRowAnimation:UITableViewRowAnimation.Fade)
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
        NSUserDefaults.standardUserDefaults().setObject("Ricardo", forKey: "restoName")
        
        
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
            let content = sectionContentDict .valueForKey(sectionTitleArray.objectAtIndex(indexPath.section) as! String) as! NSArray
            var key = "LL"
            key += sectionTitleArray.objectAtIndex(indexPath.section) as! String
            let contentPrice = sectionContentDict .valueForKey(key) as! NSArray
            cell.labelFool?.text = content .objectAtIndex(indexPath.row) as? String
            cell.labelFool?.font = UIFont (name: "Babiole", size: 14)
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
            cell.quanTextField.tag = 0
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
        
        if indexPath.section == 0 && indexPath.row == 8{
            cell.quanTextField.tag = 8
            cell.quanTextField.text = textfieldContents[8]
            cell.checkBox.tag = 8
            cell.checkBox.selected = checkStatus[8]
            
        }
        
        if indexPath.section == 0 && indexPath.row == 9{
            cell.quanTextField.tag = 9
            cell.quanTextField.text = textfieldContents[9]
            cell.checkBox.tag = 9
            cell.checkBox.selected = checkStatus[9]
            
        }
        
        if indexPath.section == 0 && indexPath.row == 10{
            cell.quanTextField.tag = 10
            cell.quanTextField.text = textfieldContents[10]
            cell.checkBox.tag = 10
            cell.checkBox.selected = checkStatus[10]
            
        }
        
        if indexPath.section == 0 && indexPath.row == 11{
            cell.quanTextField.tag = 11
            cell.quanTextField.text = textfieldContents[11]
            cell.checkBox.tag = 11
            cell.checkBox.selected = checkStatus[11]
            
        }
        
        if indexPath.section == 0 && indexPath.row == 12{
            cell.quanTextField.tag = 12
            cell.quanTextField.text = textfieldContents[12]
            cell.checkBox.tag = 12
            cell.checkBox.selected = checkStatus[12]
            
        }
        if indexPath.section == 1 && indexPath.row == 0{
            cell.quanTextField.tag = 13
            cell.quanTextField.text = textfieldContents[13]
            cell.checkBox.tag = 13
            cell.checkBox.selected = checkStatus[13]
            
        }
        if indexPath.section == 1 && indexPath.row == 1{
            cell.quanTextField.tag = 14
            cell.quanTextField.text = textfieldContents[14]
            cell.checkBox.tag = 14
            cell.checkBox.selected = checkStatus[13]
            
        }
        if indexPath.section == 1 && indexPath.row == 2{
            cell.quanTextField.tag = 14
            cell.quanTextField.text = textfieldContents[14]
            cell.checkBox.tag = 14
            cell.checkBox.selected = checkStatus[14]
            
        }
        if indexPath.section == 1 && indexPath.row == 3{
            cell.quanTextField.tag = 15
            cell.quanTextField.text = textfieldContents[15]
            cell.checkBox.tag = 15
            cell.checkBox.selected = checkStatus[15]
            
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
