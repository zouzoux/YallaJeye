//
//  KurkaViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 3/6/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class KurkaViewController: UIViewController, UITextFieldDelegate {
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
    
    let allItems: [String] = ["Tawouk Garlic (sandwich) ","Tawouk Garlic (plate)","Tawouk Curry (sandwich)","Tawouk Curry (plate)","Tawouk Paprika (sandwich)","Tawouk Paprika (plate)","Tawouk BBQ (sandwich)","Tawouk BBQ (plate)","Tawouk Mexican (sandwich)","Tawouk Mexican (plate)","Fajita (sandwich)","Fajita (plate)","Special kurka (sandwich)","Special kurka (plate)","Balpho (sandwich)","Balpho (plate)","Solo Mia","Julles","Shado","Ram’s","Fish fillet (sandwich)","Fish fillet (plate)","Tuna (sandwich)","Crab (sandwich)","Grilled chicken with garlic sauce","Grilled chicken with paprika sauce","Grilled chicken with BBQ sauce","Chicken breast","Tuna","Diet Sub","Crab salad","Tuna salad","Chicken Cesar salad","Season salad","Pasta tuna salad","French fries sandwich","Curry sauce","BBQ sauce","Paprika sauce","Cheese sauce","Soft drinks","Beer","Juice","Ice tea","Perrier","Water"]
    
    
    
    
    
    let allPrices: [Int] = [5500,11000,6000,12000,6000,12000,6000,12000,6000,12000,7000,13000,8000,15000,8000,15000,9000,9000,9000,9000,5000,8000,4000,6500,16000,18000,18000,6000,4000,5000,8000,7000,9000,6000,9000,3000,3000,3000,3000,3000,1000,2000,1000,1000,2500,500]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        super.viewDidLoad()
        
        
        
        arrayForBool = ["0","0","0","0","0","0","0","0","0","0"]
        
        sectionTitleArray  = ["Chicken Sandwiches","Chicken Crepes","Fish Sandwiches","Grilled Chicken","Fitness Sandwich","Salads","French fries","Boxes","Drinks"]
        
        let tmp1: NSArray = ["Tawouk Garlic","Tawouk Garlic","Tawouk Curry","Tawouk Curry","Tawouk Paprika","Tawouk Paprika","Tawouk BBQ","Tawouk BBQ","Tawouk Mexican","Tawouk Mexican","Fajita","Fajita","Special kurka","Special kurka","Balpho","Balpho"]
        
        // 16
        
        
        
        
        let tmp1d: NSArray = ["(sandwich)","(plate)","(sandwich)","(plate)","(sandwich)","(plate)","(sandwich)","(plate)","(sandwich)","(plate)","(sandwich)","(plate)","(sandwich)","(plate)","(sandwich)","(plate)"]
        
        let tmp2: NSArray = ["Solo Mia","Julles","Shado","Ram’s"]
        
        //20
        
        let tmp2d: NSArray = ["Grilled chicken breast,white sauce,mushrooms,oregano,green capsicum","Grilled chicken breast,onions,green onions,fresh spinach,cheddar cheese","Grilled chicken breast, green capsicum,onion wings,Soya  sauce,mozzarella cheese","Grilled chicken breast,green capsicum,black olive,corn,mozzarella"]
        
        let tmp3: NSArray = ["Fish fillet","Fish fillet","Tuna","Crab"]
        
        //24
        
       let tmp3d: NSArray = ["(sandwich)","(plate)","(sandwich)","(sandwich)"]
        
        let tmp4: NSArray = ["Grilled chicken with garlic sauce","Grilled chicken with paprika sauce","Grilled chicken with BBQ sauce"]
        
        //27
        
        let tmp4d: NSArray = ["Hole chicken , garlic past, pickles, hommos","Hole chicken , paprika sauce, pickles, hommos","Hole chicken , BBQ sauce, pickles, hommos"]
        
        let tmp5: NSArray = ["Chicken breast","Tuna","Diet Sub"]
        
        //30
        
        let tmp5d: NSArray = ["Dark bread,Grilled skinless chicken breast,grilled potatoes,cabbage salad(diet mayo),pickles,garlic past","Dark bread,Tuna(water marinated);lettuce,tomato,corn","Dark English bread,habash slices,lettuce,tomato,corn,pickles"]

        let tmp6: NSArray = ["Crab salad","Tuna salad","Chicken Cesar salad","Season salad","Pasta tuna salad"]
        
        //35
        
        let tmp6d: NSArray = ["Crab slices,lettuce,tomato,corn and mayo sauce","Tuna,lettuce,tomato,corn","chicken breasts,canola oil,green capsicum,ice berg,Parmesan curls,toasted bread","Lettuce, tomato,corn,cucumber,green capsicum,onion","Tuna,screw pasta,mushrooms,corn,palmetto,boiled eggs"]
        
        let tmp7: NSArray = ["French fries sandwich"]
        
        //36
        
        let tmp7d: NSArray = ["French fries, cabbage salad, pickles"]
        
        let tmp8: NSArray = ["Curry sauce","BBQ sauce","Paprika sauce","Cheese sauce"]
        
        //40
        
        let tmp8d: NSArray = ["","","",""]
        
        let tmp9: NSArray = ["Soft drinks","Beer","Juice","Ice tea","Perrier","Water"]
        
        //46
        
        let tmp9d: NSArray = ["","","","","","","","","","","",""]

        
        
        let tmp1Prices: NSArray = [5500,11000,6000,12000,6000,12000,6000,12000,6000,12000,7000,13000,8000,15000,8000,15000]
        
        let tmp2Prices: NSArray = [9000,9000,9000,9000]
        
        let tmp3Prices: NSArray = [5000,8000,4000,6500]
        
        let tmp4Prices: NSArray = [16000,18000,18000]
        
        let tmp5Prices: NSArray = [6000,4000,5000]
        
        let tmp6Prices: NSArray = [8000,7000,9000,6000,9000]
        
        let tmp7Prices: NSArray = [3000]
        
        let tmp8Prices: NSArray = [3000,3000,3000,3000]
        
        let tmp9Prices: NSArray = [1000,2000,1000,1000,2500,500]
        
        
        
        
        
        var string1 = sectionTitleArray .objectAtIndex(0) as? String
        
        var price1 = "LL"
        
        
        var descr = "d"
        descr += (sectionTitleArray .objectAtIndex(0) as? String)!
        price1 += (sectionTitleArray .objectAtIndex(0) as? String)!
        [sectionContentDict .setValue(tmp1, forKey:string1! )]
        [sectionContentDict .setValue(tmp1Prices, forKey:price1 )]
        [sectionContentDict .setValue(tmp1d, forKey: descr)]
        
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(1) as? String)!
        [sectionContentDict .setValue(tmp2d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(1) as? String)!
        string1 = sectionTitleArray .objectAtIndex(1) as? String
        [sectionContentDict .setValue(tmp2, forKey:string1! )]
        [sectionContentDict .setValue(tmp2Prices, forKey:price1 )]
        
        string1 = sectionTitleArray .objectAtIndex(2) as? String
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(2) as? String)!
        [sectionContentDict .setValue(tmp3d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(2) as? String)!
        [sectionContentDict .setValue(tmp3, forKey:string1! )]
        [sectionContentDict .setValue(tmp3Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(3) as? String)!
        [sectionContentDict .setValue(tmp4d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(3) as? String)!
        string1 = sectionTitleArray .objectAtIndex(3) as? String
        [sectionContentDict .setValue(tmp4, forKey:string1! )]
        [sectionContentDict .setValue(tmp4Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(4) as? String)!
        [sectionContentDict .setValue(tmp5d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(4) as? String)!
        string1 = sectionTitleArray .objectAtIndex(4) as? String
        [sectionContentDict .setValue(tmp5, forKey:string1! )]
        [sectionContentDict .setValue(tmp5Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(5) as? String)!
        [sectionContentDict .setValue(tmp6d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(5) as? String)!
        string1 = sectionTitleArray .objectAtIndex(5) as? String
        [sectionContentDict .setValue(tmp6, forKey:string1! )]
        [sectionContentDict .setValue(tmp6Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(6) as? String)!
        [sectionContentDict .setValue(tmp7d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(6) as? String)!
        string1 = sectionTitleArray .objectAtIndex(6) as? String
        [sectionContentDict .setValue(tmp7, forKey:string1! )]
        [sectionContentDict .setValue(tmp7Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(7) as? String)!
        [sectionContentDict .setValue(tmp8d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(7) as? String)!
        string1 = sectionTitleArray .objectAtIndex(7) as? String
        [sectionContentDict .setValue(tmp8, forKey:string1! )]
        [sectionContentDict .setValue(tmp8Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(8) as? String)!
        [sectionContentDict .setValue(tmp9d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(8) as? String)!
        string1 = sectionTitleArray .objectAtIndex(8) as? String
        [sectionContentDict .setValue(tmp9, forKey:string1! )]
        [sectionContentDict .setValue(tmp9Prices, forKey:price1 )]

        
        
        textfieldContents = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        

        print(textfieldContents.count)
        
        tableView.allowsSelection = false
        
        let barFont = UIFont (name: "Babiole", size: 20)
        
        
        navigationController!.navigationBar.barTintColor = UIColor.redColor()
        
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
        NSUserDefaults.standardUserDefaults().setObject("Kurka", forKey: "restoName")
        
        
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
        if indexPath.section == 0 && indexPath.row == 13{
            cell.quanTextField.tag = 13
            cell.quanTextField.text = textfieldContents[13]
            cell.checkBox.tag = 13
            cell.checkBox.selected = checkStatus[13]
            
        }
        if indexPath.section == 0 && indexPath.row == 14{
            cell.quanTextField.tag = 14
            cell.quanTextField.text = textfieldContents[14]
            cell.checkBox.tag = 14
            cell.checkBox.selected = checkStatus[14]
            
        }
        if indexPath.section == 0 && indexPath.row == 15{
            cell.quanTextField.tag = 15
            cell.quanTextField.text = textfieldContents[15]
            cell.checkBox.tag = 15
            cell.checkBox.selected = checkStatus[15]
            
        }
        if indexPath.section == 1 && indexPath.row == 0{
            cell.quanTextField.tag = 16
            cell.quanTextField.text = textfieldContents[16]
            cell.checkBox.tag = 16
            cell.checkBox.selected = checkStatus[16]
            
        }
        if indexPath.section == 1 && indexPath.row == 1{
            cell.quanTextField.tag = 17
            cell.quanTextField.text = textfieldContents[17]
            cell.checkBox.tag = 17
            cell.checkBox.selected = checkStatus[17]
            
        }
        if indexPath.section == 1 && indexPath.row == 2{
            cell.quanTextField.tag = 18
            cell.quanTextField.text = textfieldContents[18]
            cell.checkBox.tag = 18
            cell.checkBox.selected = checkStatus[18]
            
        }
        if indexPath.section == 1 && indexPath.row == 3{
            cell.quanTextField.tag = 19
            cell.quanTextField.text = textfieldContents[19]
            cell.checkBox.tag = 19
            cell.checkBox.selected = checkStatus[19]
            
        }
        if indexPath.section == 2 && indexPath.row == 0{
            cell.quanTextField.tag = 20
            cell.quanTextField.text = textfieldContents[20]
            cell.checkBox.tag = 20
            cell.checkBox.selected = checkStatus[20]
            
        }
        if indexPath.section == 2 && indexPath.row == 1{
            cell.quanTextField.tag = 21
            cell.quanTextField.text = textfieldContents[21]
            cell.checkBox.tag = 21
            cell.checkBox.selected = checkStatus[21]
            
        }
        if indexPath.section == 2 && indexPath.row == 2{
            cell.quanTextField.tag = 22
            cell.quanTextField.text = textfieldContents[22]
            cell.checkBox.tag = 22
            cell.checkBox.selected = checkStatus[22]
            
        }
        if indexPath.section == 2 && indexPath.row == 3{
            cell.quanTextField.tag = 23
            cell.quanTextField.text = textfieldContents[23]
            cell.checkBox.tag = 23
            cell.checkBox.selected = checkStatus[23]
            
        }
        if indexPath.section == 3 && indexPath.row == 0{
            cell.quanTextField.tag = 24
            cell.quanTextField.text = textfieldContents[24]
            cell.checkBox.tag = 24
            cell.checkBox.selected = checkStatus[24]
            
        }
        if indexPath.section == 3 && indexPath.row == 1{
            cell.quanTextField.tag = 25
            cell.quanTextField.text = textfieldContents[25]
            cell.checkBox.tag = 25
            cell.checkBox.selected = checkStatus[25]
            
        }
        if indexPath.section == 3 && indexPath.row == 2{
            cell.quanTextField.tag = 26
            cell.quanTextField.text = textfieldContents[26]
            cell.checkBox.tag = 26
            cell.checkBox.selected = checkStatus[26]
            
        }
        if indexPath.section == 4 && indexPath.row == 0{
            cell.quanTextField.tag = 27
            cell.quanTextField.text = textfieldContents[27]
            cell.checkBox.tag = 27
            cell.checkBox.selected = checkStatus[27]
            
        }
        if indexPath.section == 4 && indexPath.row == 1{
            cell.quanTextField.tag = 28
            cell.quanTextField.text = textfieldContents[28]
            cell.checkBox.tag = 28
            cell.checkBox.selected = checkStatus[28]
            
        }
        if indexPath.section == 4 && indexPath.row == 2{
            cell.quanTextField.tag = 29
            cell.quanTextField.text = textfieldContents[29]
            cell.checkBox.tag = 29
            cell.checkBox.selected = checkStatus[29]
            
        }
        if indexPath.section == 5 && indexPath.row == 0{
            cell.quanTextField.tag = 30
            cell.quanTextField.text = textfieldContents[30]
            cell.checkBox.tag = 30
            cell.checkBox.selected = checkStatus[30]
            
        }
        if indexPath.section == 5 && indexPath.row == 1{
            cell.quanTextField.tag = 31
            cell.quanTextField.text = textfieldContents[31]
            cell.checkBox.tag = 31
            cell.checkBox.selected = checkStatus[31]
            
        }
        if indexPath.section == 5 && indexPath.row == 2{
            cell.quanTextField.tag = 32
            cell.quanTextField.text = textfieldContents[32]
            cell.checkBox.tag = 32
            cell.checkBox.selected = checkStatus[32]
            
        }
        if indexPath.section == 5 && indexPath.row == 3{
            cell.quanTextField.tag = 33
            cell.quanTextField.text = textfieldContents[33]
            cell.checkBox.tag = 33
            cell.checkBox.selected = checkStatus[33]
            
        }
        if indexPath.section == 5 && indexPath.row == 4{
            cell.quanTextField.tag = 34
            cell.quanTextField.text = textfieldContents[34]
            cell.checkBox.tag = 34
            cell.checkBox.selected = checkStatus[34]
            
        }
        if indexPath.section == 6 && indexPath.row == 0{
            cell.quanTextField.tag = 35
            cell.quanTextField.text = textfieldContents[35]
            cell.checkBox.tag = 35
            cell.checkBox.selected = checkStatus[35]
            
        }
        if indexPath.section == 7 && indexPath.row == 0{
            cell.quanTextField.tag = 36
            cell.quanTextField.text = textfieldContents[36]
            cell.checkBox.tag = 36
            cell.checkBox.selected = checkStatus[36]
            
        }
        if indexPath.section == 7 && indexPath.row == 1{
            cell.quanTextField.tag = 37
            cell.quanTextField.text = textfieldContents[37]
            cell.checkBox.tag = 37
            cell.checkBox.selected = checkStatus[37]
            
        }
        if indexPath.section == 7 && indexPath.row == 2{
            cell.quanTextField.tag = 38
            cell.quanTextField.text = textfieldContents[38]
            cell.checkBox.tag = 38
            cell.checkBox.selected = checkStatus[38]
            
        }
        if indexPath.section == 7 && indexPath.row == 3{
            cell.quanTextField.tag = 39
            cell.quanTextField.text = textfieldContents[39]
            cell.checkBox.tag = 39
            cell.checkBox.selected = checkStatus[39]
            
        }
        if indexPath.section == 8 && indexPath.row == 0{
            cell.quanTextField.tag = 40
            cell.quanTextField.text = textfieldContents[40]
            cell.checkBox.tag = 40
            cell.checkBox.selected = checkStatus[40]
            
        }
        if indexPath.section == 8 && indexPath.row == 1{
            cell.quanTextField.tag = 41
            cell.quanTextField.text = textfieldContents[41]
            cell.checkBox.tag = 41
            cell.checkBox.selected = checkStatus[41]
            
        }
        if indexPath.section == 8 && indexPath.row == 2{
            cell.quanTextField.tag = 42
            cell.quanTextField.text = textfieldContents[42]
            cell.checkBox.tag = 42
            cell.checkBox.selected = checkStatus[42]
            
        }
        if indexPath.section == 8 && indexPath.row == 3{
            cell.quanTextField.tag = 43
            cell.quanTextField.text = textfieldContents[43]
            cell.checkBox.tag = 43
            cell.checkBox.selected = checkStatus[43]
            
        }
        if indexPath.section == 8 && indexPath.row == 4{
            cell.quanTextField.tag = 44
            cell.quanTextField.text = textfieldContents[44]
            cell.checkBox.tag = 44
            cell.checkBox.selected = checkStatus[44]
            
        }
        if indexPath.section == 8 && indexPath.row == 5{
            cell.quanTextField.tag = 45
            cell.quanTextField.text = textfieldContents[45]
            cell.checkBox.tag = 45
            cell.checkBox.selected = checkStatus[45]
            
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