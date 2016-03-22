//
//  PizeriaViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 1/16/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class PizeriaViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var tableView: UITableView!
    var sectionTitleArray : NSMutableArray = NSMutableArray()
    var sectionContentDict : NSMutableDictionary = NSMutableDictionary()
    var arrayForBool : NSMutableArray = NSMutableArray()
    var arrowImage: UIImageView = UIImageView()
    var isChecked: Bool = false
   var textfieldContents: [String] = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
    var reset: Bool = false
    var checkStatus = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
    
    
    let allItems: [String] = ["Margherita","Funghi","Four cheese","Rocca pizza", "Basil & cherry", "Vegetarian","Vegetarian delight", "Broccoli pizza","Vesuvio","Hawaiian","Capricciosa","Lebanese pizza","Pepperoni (beef)","Pepperoni (pork)","Salami","Du chef","Primavera","Carlo","BBQ chicken","Campagnolia","Calzone","Mexicana chicken","Eldorado beef","Lilla italy supreme ","Soujouk pizza","Pastrami pizza","Pescatore","Paradiso","Marinara","Super tefat","Seafood","Quattro stagion","Anchovy","Super seafood","Beef","Chicken","Tuna","Fish","Beef burger","Cheese burger","Chicken burger","Bacon & egg burger","Fish burger","Fish & chips plate","French fries","Panachee","Tuna","Chicken","Greek","Shrimp","Crab","Ham & cheese","PEPSI","7UP","MIRINDA","WATER  SMALL","WATER BIG","Fish & Chips plate","French Fries"]
    
    let allPrices: [Int] = [10000,13000,17000,17000,16000,16000,18000,17000,14000,15000,15000,16000,14000,14000,16000,16000,18000,18000,16000,15000,16000,19000,19000,20000,20000,18000,18000,18000,18000,18000,18000,20000,20000,22000,7000,7000,7000,7000,6000,7000,6000,6000,6000,15000,6000,16000,16000,17000,16000,18000,17000,15000,2000,2000,2000,1000,2000,15000,6000]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayForBool = ["0","0","0","0","0","0","0","0"]
        sectionTitleArray = ["VEGETARIAN PIZZAS","Meat pizzas","Sea food pizza","PITA SANDWICHES","Burger","Salad","COLD DRINKS","PLATES"]
        
        print(allItems.count)
        print(allPrices.count)
        print(allItems[0])
        print(allPrices[0])
        print(checkStatus.count)
        let tmp1 : NSArray = ["Margherita","Funghi","Four cheese","Rocca pizza", "Basil & cherry", "Vegetarian","Vegetarian delight", "Broccoli pizza"]
        
        let tmp1d : NSArray = ["(tomato sauce, cheese)","(frensh mushroom, corn2)","(kashkaval cheese, mozzarella, roquefort, parmesan)","(rocca, tomato, feta cheese, parmesan cheese)","(fresh basil, cherry tomato, parmesan cheese)","(onion, fresh mushroom, green pepper, olive, corn, artichoke)","(onion, tomato, fresh mushroom, artichoke, asparagus, olive, corn)","(broccoli, feta cheese, tomato)"]
        
        
        
        
        
        let tmp2 : NSArray = ["Vesuvio","Hawaiian","Capricciosa","Lebanese pizza","Pepperoni (beef)","Pepperoni (pork)","Salami","Du chef","Primavera","Carlo","BBQ chicken","Campagnolia","Calzone","Mexicana chicken","Eldorado beef","Lilla italy supreme ","Soujouk pizza","Pastrami pizza"]
        
        let tmp2d: NSArray = ["(Ham)","(ham, pineapple)","(ham, fresh mushroom)","(ham, fresh mushroom, olive, green pepper, corn)","","","(salami,tomato,asperge,kashkaval & mozzarella cheese)","(beef meat, onion, fresh mushroom, green pepper, bbq sauce)","(tomatobeef meat, bacon, egg, onion)","(beef meat, pepperoni, ham)","(breast chicken,onion, green pepper,corn,bbq sauce)","(pepperoni,fresh mushroom,onion)","bolognese sauce(mince meat,onion,green pepper,carrots),parmesan cheese","(breast chicken, green pepper, corn , olive, avocado , mexican hot sauce)","(tomato, fresh mushroombeef meat, bacon, onion, green pepper, chilli slice)","(beef meat, ham, pepperoni, onion,  green  pepper, fresh mushroom,tomato)","(green pepper soujouk,onion,tomato)","(pastrami, rocca,tomato)"]
        
        
        
        
        let tmp3: NSArray = ["Pescatore","Paradiso","Marinara","Super tefat","Seafood","Quattro stagion","Anchovy","Super seafood"]
        
        let tmp3d: NSArray = ["(shrimp, tuna)","(shrimp, ham, fresh mushroom)","(shrimp, mussel)","(shrimp, ham, fresh mushroom)","(shrimp, crab, mussel)","(large shrimp, crab, ham, fresh mushroom, olive)","(anchovy, artichoke, asparagus)","large shrimp, crab,tuna, mussel, avocado"]
        
        
        let tmp4: NSArray = ["Beef","Chicken","Tuna","Fish"]
        
        let tmp4d: NSArray = ["(beef meat, lettuce, tomato, cucumber, onion)","(chicken schnitzel, lettuce, tomato, corn)","(tuna, lettuce, tomato, olive, corn, onion)","(lettuce, pickles, corn)","","","","","","",""]
        
        
        let tmp5: NSArray = ["Beef burger","Cheese burger","Chicken burger","Bacon & egg burger","Fish burger","Fish & chips plate","French fries"]
        
        let tmp5d: NSArray = ["(beef, pickles, lettuce, tomato)","(beef, cheese, pickles, lettuce, tomato)","(chicken, tomato, lettuce, pickles)","(bacon, egg, onion, tomato, bbq sauce )","(fish, lettuce, pickles)","(fried fish,lettuce,corn,chips,tartar dressing)",""]
        
        
        let tmp6: NSArray = ["Panachee","Tuna","Chicken","Greek","Shrimp","Crab","Ham & cheese"]
        
        let tmp6d: NSArray = ["(palmito, asparagus, corn, artichoke, lettuce, tomato, mushroom)","(tuna, corn, olive, lettuce, tomato, cucumber, lemon, onion)","(chicken, avocado, lettuce, tomato, cucumber, corn, parmesan cheese)","(feta cheese, olive, green pepper, lettuce, tomato, cucumber, onion)","(large shrimp, avocado, corn, lettuce, tomato,cucumber, lemon)","(crab, lettuce, corn, cherry tomato)","ham, cheese, pineapple,lettuce corn,tomato,cucumber)"]
        
        let tmp7: NSArray = ["PEPSI","7UP","MIRINDA","WATER  SMALL","WATER BIG"]
        
        let tmp7d: NSArray = ["","","","","","","","","","",""]
        
        
        let tmp8: NSArray = ["Fish & Chips plate","French Fries"]
        
        let tmp8d: NSArray = ["(fried fish, lettuce, corn, chips, tartar dressing)","","","","","","","","","",""]
        
        
        
        let tmp1Prices: NSArray = [10000,13000,17000,17000,16000,16000,18000,17000]
        
        
        let tmp2Prices: NSArray = [14000,15000,15000,16000,14000,14000,16000,16000,18000,18000,16000,15000,16000,19000,19000,20000,20000,18000]
        
        
        let tmp3Prices: NSArray = [18000,18000,18000,18000,18000,20000,20000,22000]
        
        
        let tmp4Prices: NSArray = [7000,7000,7000,7000]
        
        
        let tmp5Prices: NSArray = [6000,7000,6000,6000,6000,15000,6000]
        
        let tmp6Prices: NSArray = [16000,16000,17000,16000,18000,17000,15000]
        
        let tmp7Prices: NSArray = [2000,2000,2000,1000,2000]
        
        let tmp8Prices: NSArray = [15000,6000]

        
        var string1 = sectionTitleArray .objectAtIndex(0) as? String
        var price1 = "LL"
        var descr = "d"
        descr += (sectionTitleArray .objectAtIndex(0) as? String)!
        price1 += (sectionTitleArray .objectAtIndex(0) as? String)!
        [sectionContentDict .setValue(tmp1, forKey:string1! )]
        [sectionContentDict .setValue(tmp1Prices, forKey:price1 )]
        [sectionContentDict .setValue(tmp1d, forKey: descr)]
        
        
        string1 = sectionTitleArray .objectAtIndex(1) as? String
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(1) as? String)!
        price1 += (sectionTitleArray .objectAtIndex(1) as? String)!
        [sectionContentDict .setValue(tmp2, forKey:string1! )]
        [sectionContentDict .setValue(tmp2Prices, forKey:price1 )]
        [sectionContentDict .setValue(tmp2d, forKey: descr)]
        
        
        string1 = sectionTitleArray .objectAtIndex(2) as? String
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(2) as? String)!
        price1 += (sectionTitleArray .objectAtIndex(2) as? String)!
        [sectionContentDict .setValue(tmp3, forKey:string1! )]
        [sectionContentDict .setValue(tmp3Prices, forKey:price1 )]
        [sectionContentDict .setValue(tmp3d, forKey: descr)]
        
        
        string1 = sectionTitleArray .objectAtIndex(3) as? String
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(3) as? String)!
        price1 += (sectionTitleArray .objectAtIndex(3) as? String)!
        [sectionContentDict .setValue(tmp4, forKey:string1! )]
        [sectionContentDict .setValue(tmp4Prices, forKey:price1 )]
        [sectionContentDict .setValue(tmp4d, forKey: descr)]
        
        
        string1 = sectionTitleArray .objectAtIndex(4) as? String
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(4) as? String)!
        price1 += (sectionTitleArray .objectAtIndex(4) as? String)!
        [sectionContentDict .setValue(tmp5, forKey:string1! )]
        [sectionContentDict .setValue(tmp5Prices, forKey:price1 )]
        [sectionContentDict .setValue(tmp5d, forKey: descr)]
        
        string1 = sectionTitleArray .objectAtIndex(5) as? String
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(5) as? String)!
        price1 += (sectionTitleArray .objectAtIndex(5) as? String)!
        [sectionContentDict .setValue(tmp6, forKey:string1! )]
        [sectionContentDict .setValue(tmp6Prices, forKey:price1 )]
        [sectionContentDict .setValue(tmp6d, forKey: descr)]
        
        string1 = sectionTitleArray .objectAtIndex(6) as? String
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(6) as? String)!
        price1 += (sectionTitleArray .objectAtIndex(6) as? String)!
        [sectionContentDict .setValue(tmp7, forKey:string1! )]
        [sectionContentDict .setValue(tmp7Prices, forKey:price1 )]
        [sectionContentDict .setValue(tmp7d, forKey: descr)]
        
        string1 = sectionTitleArray .objectAtIndex(7) as? String
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(7) as? String)!
        price1 += (sectionTitleArray .objectAtIndex(7) as? String)!
        [sectionContentDict .setValue(tmp8, forKey:string1! )]
        [sectionContentDict .setValue(tmp8Prices, forKey:price1 )]
        [sectionContentDict .setValue(tmp8d, forKey: descr)]
        
        tableView.allowsSelection = false

    }
    // Do any additional setup after loading the view.
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func checkBoxPressed(sender: CheckboxButton) {
        sender.selected = !sender.selected
        
        if(sender.selected == true){
            self.checkStatus[sender.tag] = true
        }else{
            self.checkStatus[sender.tag] = false
        }
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
        
        self.arrowImage = UIImageView(image: image!)
        
        self.arrowImage.frame = CGRect(x: 6, y: 12, width: 20, height: 20)
        
        let headerString = UILabel(frame: CGRect(x: 30, y: 10, width: tableView.frame.size.width-10, height: 30)) as UILabel
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
            
            var collapsed = arrayForBool .objectAtIndex(indexPath.section).boolValue
            collapsed       = !collapsed;
            
            self.arrowImage.transform = !collapsed ? CGAffineTransformMakeRotation(CGFloat(M_PI)) : CGAffineTransformIdentity
            
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
        NSUserDefaults.standardUserDefaults().setObject("Pizzaria", forKey: "restoName")
        
        
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
        
        
        if indexPath.section == 1 && indexPath.row == 0{
            cell.quanTextField.tag = 8
            cell.quanTextField.text = textfieldContents[8]
            cell.checkBox.tag = 8
            cell.checkBox.selected = checkStatus[8]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 1{
            cell.quanTextField.tag = 9
            cell.quanTextField.text = textfieldContents[9]
            cell.checkBox.tag = 9
            cell.checkBox.selected = checkStatus[9]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 2{
            cell.quanTextField.tag = 10
            cell.quanTextField.text = textfieldContents[10]
            cell.checkBox.tag = 10
            cell.checkBox.selected = checkStatus[10]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 3{
            cell.quanTextField.tag = 11
            cell.quanTextField.text = textfieldContents[11]
            cell.checkBox.tag = 11
            cell.checkBox.selected = checkStatus[11]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 4{
            cell.quanTextField.tag = 12
            cell.quanTextField.text = textfieldContents[12]
            cell.checkBox.tag = 12
            cell.checkBox.selected = checkStatus[12]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 5{
            cell.quanTextField.tag = 13
            cell.quanTextField.text = textfieldContents[13]
            cell.checkBox.tag = 13
            cell.checkBox.selected = checkStatus[13]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 6{
            cell.quanTextField.tag = 14
            cell.quanTextField.text = textfieldContents[14]
            cell.checkBox.tag = 14
            cell.checkBox.selected = checkStatus[14]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 7{
            cell.quanTextField.tag = 15
            cell.quanTextField.text = textfieldContents[15]
            cell.checkBox.tag = 15
            cell.checkBox.selected = checkStatus[15]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 8{
            cell.quanTextField.tag = 16
            cell.quanTextField.text = textfieldContents[16]
            cell.checkBox.tag = 16
            cell.checkBox.selected = checkStatus[16]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 9{
            cell.quanTextField.tag = 17
            cell.quanTextField.text = textfieldContents[17]
            cell.checkBox.tag = 17
            cell.checkBox.selected = checkStatus[17]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 10{
            cell.quanTextField.tag = 18
            cell.quanTextField.text = textfieldContents[18]
            cell.checkBox.tag = 18
            cell.checkBox.selected = checkStatus[18]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 11{
            cell.quanTextField.tag = 19
            cell.quanTextField.text = textfieldContents[19]
            cell.checkBox.tag = 19
            cell.checkBox.selected = checkStatus[19]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 12{
            cell.quanTextField.tag = 20
            cell.quanTextField.text = textfieldContents[20]
            cell.checkBox.tag = 20
            cell.checkBox.selected = checkStatus[20]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 13{
            cell.quanTextField.tag = 21
            cell.quanTextField.text = textfieldContents[21]
            cell.checkBox.tag = 21
            cell.checkBox.selected = checkStatus[21]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 14{
            cell.quanTextField.tag = 22
            cell.quanTextField.text = textfieldContents[22]
            cell.checkBox.tag = 22
            cell.checkBox.selected = checkStatus[22]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 15{
            cell.quanTextField.tag = 23
            cell.quanTextField.text = textfieldContents[23]
            cell.checkBox.tag = 23
            cell.checkBox.selected = checkStatus[23]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 16{
            cell.quanTextField.tag = 24
            cell.quanTextField.text = textfieldContents[24]
            cell.checkBox.tag = 24
            cell.checkBox.selected = checkStatus[24]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 17{
            cell.quanTextField.tag = 25
            cell.quanTextField.text = textfieldContents[25]
            cell.checkBox.tag = 25
            cell.checkBox.selected = checkStatus[25]
            
        }
        
        if indexPath.section == 2 && indexPath.row == 0{
            cell.quanTextField.tag = 26
            cell.quanTextField.text = textfieldContents[26]
            cell.checkBox.tag = 26
            cell.checkBox.selected = checkStatus[26]
            
        }
        
        if indexPath.section == 2 && indexPath.row == 1{
            cell.quanTextField.tag = 27
            cell.quanTextField.text = textfieldContents[27]
            cell.checkBox.tag = 27
            cell.checkBox.selected = checkStatus[27]
            
        }
        
        if indexPath.section == 2 && indexPath.row == 2{
            cell.quanTextField.tag = 28
            cell.quanTextField.text = textfieldContents[28]
            cell.checkBox.tag = 28
            cell.checkBox.selected = checkStatus[28]
            
        }
        
        if indexPath.section == 2 && indexPath.row == 3{
            cell.quanTextField.tag = 29
            cell.quanTextField.text = textfieldContents[29]
            cell.checkBox.tag = 29
            cell.checkBox.selected = checkStatus[29]
            
        }
        
        if indexPath.section == 2 && indexPath.row == 4{
            cell.quanTextField.tag = 30
            cell.quanTextField.text = textfieldContents[30]
            cell.checkBox.tag = 30
            cell.checkBox.selected = checkStatus[30]
            
        }
        
        if indexPath.section == 2 && indexPath.row == 5{
            cell.quanTextField.tag = 31
            cell.quanTextField.text = textfieldContents[31]
            cell.checkBox.tag = 31
            cell.checkBox.selected = checkStatus[31]
            
        }
        
        if indexPath.section == 2 && indexPath.row == 6{
            cell.quanTextField.tag = 32
            cell.quanTextField.text = textfieldContents[32]
            cell.checkBox.tag = 32
            cell.checkBox.selected = checkStatus[32]
            
        }
        
        if indexPath.section == 2 && indexPath.row == 7{
            cell.quanTextField.tag = 33
            cell.quanTextField.text = textfieldContents[33]
            cell.checkBox.tag = 33
            cell.checkBox.selected = checkStatus[33]
            
        }
        
        if indexPath.section == 3 && indexPath.row == 0{
            cell.quanTextField.tag = 34
            cell.quanTextField.text = textfieldContents[34]
            cell.checkBox.tag = 34
            cell.checkBox.selected = checkStatus[34]
            
        }
        
        if indexPath.section == 3 && indexPath.row == 1{
            cell.quanTextField.tag = 35
            cell.quanTextField.text = textfieldContents[35]
            cell.checkBox.tag = 35
            cell.checkBox.selected = checkStatus[35]
            
        }
        
        if indexPath.section == 3 && indexPath.row == 2{
            cell.quanTextField.tag = 36
            cell.quanTextField.text = textfieldContents[36]
            cell.checkBox.tag = 36
            cell.checkBox.selected = checkStatus[36]
            
        }
        
        if indexPath.section == 3 && indexPath.row == 3{
            cell.quanTextField.tag = 37
            cell.quanTextField.text = textfieldContents[37]
            cell.checkBox.tag = 37
            cell.checkBox.selected = checkStatus[37]
            
        }
        
        
        if indexPath.section == 4 && indexPath.row == 0{
            cell.quanTextField.tag = 38
            cell.quanTextField.text = textfieldContents[38]
            cell.checkBox.tag = 38
            cell.checkBox.selected = checkStatus[38]
            
        }
        
        if indexPath.section == 4 && indexPath.row == 1{
            cell.quanTextField.tag = 39
            cell.quanTextField.text = textfieldContents[39]
            cell.checkBox.tag = 39
            cell.checkBox.selected = checkStatus[39]
            
        }
        
        if indexPath.section == 4 && indexPath.row == 2{
            cell.quanTextField.tag = 40
            cell.quanTextField.text = textfieldContents[40]
            cell.checkBox.tag = 40
            cell.checkBox.selected = checkStatus[40]
            
        }
        
        if indexPath.section == 4 && indexPath.row == 3{
            cell.quanTextField.tag = 41
            cell.quanTextField.text = textfieldContents[41]
            cell.checkBox.tag = 41
            cell.checkBox.selected = checkStatus[41]
            
        }
        
        if indexPath.section == 4 && indexPath.row == 4{
            cell.quanTextField.tag = 42
            cell.quanTextField.text = textfieldContents[42]
            cell.checkBox.tag = 42
            cell.checkBox.selected = checkStatus[42]
            
        }
        
        if indexPath.section == 4 && indexPath.row == 5{
            cell.quanTextField.tag = 43
            cell.quanTextField.text = textfieldContents[43]
            cell.checkBox.tag = 43
            cell.checkBox.selected = checkStatus[43]
            
        }
        
        if indexPath.section == 4 && indexPath.row == 6{
            cell.quanTextField.tag = 44
            cell.quanTextField.text = textfieldContents[44]
            cell.checkBox.tag = 44
            cell.checkBox.selected = checkStatus[44]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 0{
            cell.quanTextField.tag = 45
            cell.quanTextField.text = textfieldContents[45]
            cell.checkBox.tag = 45
            cell.checkBox.selected = checkStatus[45]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 1{
            cell.quanTextField.tag = 46
            cell.quanTextField.text = textfieldContents[46]
            cell.checkBox.tag = 46
            cell.checkBox.selected = checkStatus[46]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 2{
            cell.quanTextField.tag = 47
            cell.quanTextField.text = textfieldContents[47]
            cell.checkBox.tag = 47
            cell.checkBox.selected = checkStatus[47]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 3{
            cell.quanTextField.tag = 48
            cell.quanTextField.text = textfieldContents[48]
            cell.checkBox.tag = 48
            cell.checkBox.selected = checkStatus[48]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 4{
            cell.quanTextField.tag = 49
            cell.quanTextField.text = textfieldContents[49]
            cell.checkBox.tag = 49
            cell.checkBox.selected = checkStatus[49]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 5{
            cell.quanTextField.tag = 50
            cell.quanTextField.text = textfieldContents[50]
            cell.checkBox.tag = 50
            cell.checkBox.selected = checkStatus[50]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 6{
            cell.quanTextField.tag = 51
            cell.quanTextField.text = textfieldContents[51]
            cell.checkBox.tag = 51
            cell.checkBox.selected = checkStatus[51]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 0{
            cell.quanTextField.tag = 52
            cell.quanTextField.text = textfieldContents[52]
            cell.checkBox.tag = 52
            cell.checkBox.selected = checkStatus[52]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 1{
            cell.quanTextField.tag = 53
            cell.quanTextField.text = textfieldContents[53]
            cell.checkBox.tag = 53
            cell.checkBox.selected = checkStatus[53]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 2{
            cell.quanTextField.tag = 54
            cell.quanTextField.text = textfieldContents[54]
            cell.checkBox.tag = 54
            cell.checkBox.selected = checkStatus[54]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 3{
            cell.quanTextField.tag = 55
            cell.quanTextField.text = textfieldContents[55]
            cell.checkBox.tag = 55
            cell.checkBox.selected = checkStatus[55]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 4{
            cell.quanTextField.tag = 56
            cell.quanTextField.text = textfieldContents[56]
            cell.checkBox.tag = 56
            cell.checkBox.selected = checkStatus[56]
            
        }
        
        if indexPath.section == 7 && indexPath.row == 0{
            cell.quanTextField.tag = 57
            cell.quanTextField.text = textfieldContents[57]
            cell.checkBox.tag = 57
            cell.checkBox.selected = checkStatus[57]
            
        }
        
        if indexPath.section == 7 && indexPath.row == 1{
            cell.quanTextField.tag = 58
            cell.quanTextField.text = textfieldContents[58]
            cell.checkBox.tag = 58
            cell.checkBox.selected = checkStatus[58]
            
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