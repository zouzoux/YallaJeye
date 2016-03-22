//
//  TanbakjiViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 1/12/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class TanbakjiViewController: UIViewController, UITextFieldDelegate {

    var sectionTitleArray : NSMutableArray = NSMutableArray()
    var sectionContentDict : NSMutableDictionary = NSMutableDictionary()
    var arrayForBool : NSMutableArray = NSMutableArray()
    var isChecked: Bool = false
    var textfieldContents: [String] = ["","","","", "","","","","","","","","",""]
    var arrowImage: UIImageView = UIImageView()
    var reset: Bool = false
    var checkStatus = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
    
    let allItems: [String] = ["Season Salad","Fattouch","Tabboule", "Raheb Salad","Zaatar, Rocca & Bakleh Salad","Halloum Salad","Hommos","Hommos Beiruti","Mutabal","Mousakaa","Labneh","Goat Labneh","Labneh with Garlic","Tajen Fish","Wark Enab","Hendbeh Bel Zeit","Basterma","Batrakh","Halloum Grilled","Kebbeh Halabieh","Rkakat Cheese & Sujok","Rkakat Cheese","Burak Cheese","Sambousek Lahme","Foul","Balila","Hommos Snawbar","Hommos Awarma","Hommos Makanek","Hommos Sujok","Hommos Meat & Snawbar","Eggs Sumak","Eggs Awarma","Eggs Sujok","Chicken Liver Tanbakji","Makanek","Sujok","Frogs","French Fries","Potato Harra","Potato Tanbakji","Grilled Potatoes","Grilled Wings","Mixed Raw Meat","Raw Kebbeh with Chili","Raw Kebbeh","Raw Habra","Raw Kafta","Falafel","Sfiha Grilled","Hommos Tanbakji","Fatte Hommos","Fatte Batenjan","Chawarma Chicken","Chawarma Meat","Kebbeh Jabalieh","Grilled Kebbeh with Labneh","Kebab with Yogurt","Grilled Meat (Lamb)","Grilled Meat (Beef)","Kebab Halabi","Kebab Batenjan","Kebab Orfali","Chich Taouk","Mashawi Mixed","Chicken Grilled Breast","Grilled Fish","Grilled Shrimps (1 Kg)","Biscuit au Chocolat","Mouhalabiye","Crepes with Walnuts","Layali Zahle","Ice Cream","Mineral Water 1.5 L","Mineral Water 0.5 L","Perrier","Soft Drinks","Lemonade","Orange Juice","Nescafé","Turkish Coffee","White Coffee","Tisane","Almaza","Whisky Extra – btl","Whisky Extra – ½ btl","Whisky Extra – gls","Whisky Regular – btl","Whisky Regular – ½ btl","Whisky Regular – gls","Stolichnaya Vodka – btl","Stolichnaya Vodka – gls","Absolute Vodka – btl","Absolute Vodka – gls","Arak (Brun – Samir – Ksara) – btl","Arak (Brun – Samir – Ksara) – ½ btl","Arak (Brun – Samir – Ksara) – ¼ btl","Arak (Brun – Samir – Ksara) – gls","Arak Al karram – btl","Arak Al karram – ½ btl","Arak Al karram – ¼ btl","Arak Al karram – gls","Château Ksara – btl","Ksara Reserve du couvent – btl","Ksara Reserve du couvent – ½ btl","Ksara Blanc de Blanc – btl","Ksara Blanc de Blanc – ½ btl","Ksara Sunset – btl","Ksara Sunset – ½ btl","Domaine des Tourelles – btl","Nakad – btl","Warde Château les cèdres – btl","Mouassal","Ajami"]
    
    let allSections: Array<String> = ["Salads","Mezza","Raw meat","Tanbakji Specials","Grill","Desserts","Beverages","Hot beverages","Alcoholic beverages","Wine","Narguile"]
    let allPrices: [Int] = [6000,7500,7500,7500,7500,9000,6000,6000,6500,8000,5500,7500,6500,7500,7500,6500,8500,26500,7500,7500,8500,7500,8500,7500,6500,6500,7500,8500,8500,8500,8500,5500,9000,8500,9500,9500,9500,15000,6500,8500,5500,6000,11500,31500,13000,13000,12500,12000,10000,12500,18500,7500,8500,18000,19000,16000,14500,15500,18000,17000,14000,15500,15000,15500,20000,22500,18000,55000,5500,4500,7500,7500,2000,2500,1500,5500,2500,5000,5500,4500,4500,4500,4500,6000,96000,52000,12000,65000,35000,10000,50000,12000,56000,12000,45000,30000,19000,10000,40000,28000,15000,9000,63000,40000,19500,40000,19500,40000,19500,34500,30000,75000,12500,14000]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayForBool = ["0","0","0","0","0","0","0","0","0","0","0","0"]
        sectionTitleArray  = ["Salads","Mezza","Raw meat","Tanbakji Specials","Grill","Desserts","Beverages","Hot beverages","Alcoholic beverages","Wine","Narguile"]
        let tmp1: NSArray = ["Season Salad","Fattouch","Tabboule", "Raheb Salad","Zaatar, Rocca & Bakleh Salad","Halloum Salad"]
        let tmp2: NSArray = ["Hommos","Hommos Beiruti","Mutabal","Mousakaa","Labneh","Goat Labneh","Labneh with Garlic","Tajen Fish","Wark Enab","Hendbeh Bel Zeit","Basterma","Batrakh","Halloum Grilled","Kebbeh Halabieh","Rkakat Cheese & Sujok","Rkakat Cheese","Burak Cheese","Sambousek Lahme","Foul","Balila","Hommos Snawbar","Hommos Awarma","Hommos Makanek","Hommos Sujok","Hommos Meat & Snawbar","Eggs Sumak","Eggs Awarma","Eggs Sujok","Chicken Liver Tanbakji","Makanek","Sujok","Frogs","French Fries","Potato Harra","Potato Tanbakji","Grilled Potatoes","Grilled Wings"]
        let tmp3: NSArray = ["Mixed Raw Meat","Raw Kebbeh with Chili","Raw Kebbeh","Raw Habra","Raw Kafta"]
        let tmp4: NSArray = ["Falafel","Sfiha Grilled","Hommos Tanbakji","Fatte Hommos","Fatte Batenjan","Chawarma Chicken","Chawarma Meat","Kebbeh Jabalieh","Grilled Kebbeh with Labneh","Kebab with Yogurt"]
        let tmp5: NSArray = ["Grilled Meat (Lamb)","Grilled Meat (Beef)","Kebab Halabi","Kebab Batenjan","Kebab Orfali","Chich Taouk","Mashawi Mixed","Chicken Grilled Breast","Grilled Fish","Grilled Shrimps (1 Kg)"]
        let tmp6: NSArray = ["Biscuit au Chocolat","Mouhalabiye","Crepes with Walnuts","Layali Zahle","Ice Cream"]
        let tmp7: NSArray = ["Mineral Water 1.5 L","Mineral Water 0.5 L","Perrier","Soft Drinks","Lemonade","Orange Juice"]
        let tmp8: NSArray = ["Nescafé","Turkish Coffee","White Coffee","Tisane"]
        let tmp9: NSArray = ["Almaza","Whisky Extra – btl","Whisky Extra – ½ btl","Whisky Extra – gls","Whisky Regular – btl","Whisky Regular – ½ btl","Whisky Regular – gls","Stolichnaya Vodka – btl","Stolichnaya Vodka – gls","Absolute Vodka – btl","Absolute Vodka – gls","Arak (Brun – Samir – Ksara) – btl","Arak (Brun – Samir – Ksara) – ½ btl","Arak (Brun – Samir – Ksara) – ¼ btl","Arak (Brun – Samir – Ksara) – gls","Arak Al karram – btl","Arak Al karram – ½ btl","Arak Al karram – ¼ btl","Arak Al karram – gls"]
        let tmp10: NSArray = ["Château Ksara – btl","Ksara Reserve du couvent – btl","Ksara Reserve du couvent – ½ btl","Ksara Blanc de Blanc – btl","Ksara Blanc de Blanc – ½ btl","Ksara Sunset – btl","Ksara Sunset – ½ btl","Domaine des Tourelles – btl","Nakad – btl","Warde Château les cèdres – btl"]
        let tmp11: NSArray = ["Mouassal","Ajami"]
        
        
        
        let tmp1Prices: NSArray = [6000,7500,7500,7500,7500,9000]
        let tmp2Prices: NSArray = [6000,6000,6500,8000,5500,7500,6500,7500,7500,6500,8500,26500,7500,7500,8500,7500,8500,7500,6500,6500,7500,8500,8500,8500,8500,5500,9000,8500,9500,9500,9500,15000,6500,8500,5500,6000,11500]
        let tmp3Prices: NSArray = [31500,13000,13000,12500,12000]
        let tmp4Prices: NSArray = [10000,12500,18500,7500,8500,18000,19000,16000,14500,15500]
        let tmp5Prices: NSArray = [18000,17000,14000,15500,15000,15500,20000,22500,18000,55000]
        let tmp6Prices: NSArray = [5500,4500,7500,7500,2000]
        let tmp7Prices: NSArray = [2500,1500,5500,2500,5000,5500]
        let tmp8Prices: NSArray = [4500,4500,4500,4500]
        let tmp9Prices: NSArray = [6000,96000,52000,12000,65000,35000,10000,50000,12000,56000,12000,45000,30000,19000,10000,40000,28000,15000,9000]
        let tmp10Prices: NSArray = [63000,40000,19500,40000,19500,40000,19500,34500,30000,75000]
        let tmp11Prices: NSArray = [12500,14000]
        
        print(tmp1.count)
        
        
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
        
        string1 = sectionTitleArray .objectAtIndex(2) as? String
        price1 = "LL"
        price1 += (sectionTitleArray .objectAtIndex(2) as? String)!
        [sectionContentDict .setValue(tmp3, forKey:string1! )]
        [sectionContentDict .setValue(tmp3Prices, forKey:price1 )]
        
        price1 = "LL"
        price1 += (sectionTitleArray .objectAtIndex(3) as? String)!
        string1 = sectionTitleArray .objectAtIndex(3) as? String
        [sectionContentDict .setValue(tmp4, forKey:string1! )]
        [sectionContentDict .setValue(tmp4Prices, forKey:price1 )]
        
        price1 = "LL"
        price1 += (sectionTitleArray .objectAtIndex(4) as? String)!
        string1 = sectionTitleArray .objectAtIndex(4) as? String
        [sectionContentDict .setValue(tmp5, forKey:string1! )]
        [sectionContentDict .setValue(tmp5Prices, forKey:price1 )]
        
        price1 = "LL"
        price1 += (sectionTitleArray .objectAtIndex(5) as? String)!
        string1 = sectionTitleArray .objectAtIndex(5) as? String
        [sectionContentDict .setValue(tmp6, forKey:string1! )]
        [sectionContentDict .setValue(tmp6Prices, forKey:price1 )]
        
        price1 = "LL"
        price1 += (sectionTitleArray .objectAtIndex(6) as? String)!
        string1 = sectionTitleArray .objectAtIndex(6) as? String
        [sectionContentDict .setValue(tmp7, forKey:string1! )]
        [sectionContentDict .setValue(tmp7Prices, forKey:price1 )]

        
        price1 = "LL"
        price1 += (sectionTitleArray .objectAtIndex(7) as? String)!
        string1 = sectionTitleArray .objectAtIndex(7) as? String
        [sectionContentDict .setValue(tmp8, forKey:string1! )]
        [sectionContentDict .setValue(tmp8Prices, forKey:price1 )]

        
        price1 = "LL"
        price1 += (sectionTitleArray .objectAtIndex(8) as? String)!
        string1 = sectionTitleArray .objectAtIndex(8) as? String
        [sectionContentDict .setValue(tmp9, forKey:string1! )]
        [sectionContentDict .setValue(tmp9Prices, forKey:price1 )]

        
        price1 = "LL"
        price1 += (sectionTitleArray .objectAtIndex(9) as? String)!
        string1 = sectionTitleArray .objectAtIndex(9) as? String
        [sectionContentDict .setValue(tmp10, forKey:string1! )]
        [sectionContentDict .setValue(tmp10Prices, forKey:price1 )]

        
        price1 = "LL"
        price1 += (sectionTitleArray .objectAtIndex(10) as? String)!
        string1 = sectionTitleArray .objectAtIndex(10) as? String
        [sectionContentDict .setValue(tmp11, forKey:string1! )]
        [sectionContentDict .setValue(tmp11Prices, forKey:price1 )]

        
        tableView.allowsSelection = false
        
        
        textfieldContents = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
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
        NSUserDefaults.standardUserDefaults().setObject("Tanbakji", forKey: "restoName")
        
        
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
        if indexPath.section == 1 && indexPath.row == 0{
            cell.quanTextField.tag = 6
            cell.quanTextField.text = textfieldContents[6]
            cell.checkBox.tag = 6
            cell.checkBox.selected = checkStatus[6]
            
        }
        if indexPath.section == 1 && indexPath.row == 1{
            cell.quanTextField.tag = 7
            cell.quanTextField.text = textfieldContents[7]
            cell.checkBox.tag = 7
            cell.checkBox.selected = checkStatus[7]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 2{
            cell.quanTextField.tag = 8
            cell.quanTextField.text = textfieldContents[8]
            cell.checkBox.tag = 8
            cell.checkBox.selected = checkStatus[8]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 3{
            cell.quanTextField.tag = 9
            cell.quanTextField.text = textfieldContents[9]
            cell.checkBox.tag = 9
            cell.checkBox.selected = checkStatus[9]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 4{
            cell.quanTextField.tag = 10
            cell.quanTextField.text = textfieldContents[10]
            cell.checkBox.tag = 10
            cell.checkBox.selected = checkStatus[10]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 5{
            cell.quanTextField.tag = 11
            cell.quanTextField.text = textfieldContents[11]
            cell.checkBox.tag = 11
            cell.checkBox.selected = checkStatus[11]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 6{
            cell.quanTextField.tag = 12
            cell.quanTextField.text = textfieldContents[12]
            cell.checkBox.tag = 12
            cell.checkBox.selected = checkStatus[12]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 7{
            cell.quanTextField.tag = 13
            cell.quanTextField.text = textfieldContents[13]
            cell.checkBox.tag = 13
            cell.checkBox.selected = checkStatus[13]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 8{
            cell.quanTextField.tag = 14
            cell.quanTextField.text = textfieldContents[14]
            cell.checkBox.tag = 14
            cell.checkBox.selected = checkStatus[14]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 9{
            cell.quanTextField.tag = 15
            cell.quanTextField.text = textfieldContents[15]
            cell.checkBox.tag = 15
            cell.checkBox.selected = checkStatus[15]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 10{
            cell.quanTextField.tag = 16
            cell.quanTextField.text = textfieldContents[16]
            cell.checkBox.tag = 16
            cell.checkBox.selected = checkStatus[16]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 11{
            cell.quanTextField.tag = 17
            cell.quanTextField.text = textfieldContents[17]
            cell.checkBox.tag = 17
            cell.checkBox.selected = checkStatus[17]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 12{
            cell.quanTextField.tag = 18
            cell.quanTextField.text = textfieldContents[18]
            cell.checkBox.tag = 18
            cell.checkBox.selected = checkStatus[18]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 13{
            cell.quanTextField.tag = 19
            cell.quanTextField.text = textfieldContents[19]
            cell.checkBox.tag = 19
            cell.checkBox.selected = checkStatus[19]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 14{
            cell.quanTextField.tag = 20
            cell.quanTextField.text = textfieldContents[20]
            cell.checkBox.tag = 20
            cell.checkBox.selected = checkStatus[20]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 15{
            cell.quanTextField.tag = 21
            cell.quanTextField.text = textfieldContents[21]
            cell.checkBox.tag = 21
            cell.checkBox.selected = checkStatus[21]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 16{
            cell.quanTextField.tag = 22
            cell.quanTextField.text = textfieldContents[22]
            cell.checkBox.tag = 22
            cell.checkBox.selected = checkStatus[22]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 17{
            cell.quanTextField.tag = 23
            cell.quanTextField.text = textfieldContents[23]
            cell.checkBox.tag = 23
            cell.checkBox.selected = checkStatus[23]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 18{
            cell.quanTextField.tag = 24
            cell.quanTextField.text = textfieldContents[24]
            cell.checkBox.tag = 24
            cell.checkBox.selected = checkStatus[24]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 19{
            cell.quanTextField.tag = 25
            cell.quanTextField.text = textfieldContents[25]
            cell.checkBox.tag = 25
            cell.checkBox.selected = checkStatus[25]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 20{
            cell.quanTextField.tag = 26
            cell.quanTextField.text = textfieldContents[26]
            cell.checkBox.tag = 26
            cell.checkBox.selected = checkStatus[26]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 21{
            cell.quanTextField.tag = 27
            cell.quanTextField.text = textfieldContents[27]
            cell.checkBox.tag = 27
            cell.checkBox.selected = checkStatus[27]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 22{
            cell.quanTextField.tag = 28
            cell.quanTextField.text = textfieldContents[28]
            cell.checkBox.tag = 28
            cell.checkBox.selected = checkStatus[28]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 23{
            cell.quanTextField.tag = 29
            cell.quanTextField.text = textfieldContents[29]
            cell.checkBox.tag = 29
            cell.checkBox.selected = checkStatus[29]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 24{
            cell.quanTextField.tag = 30
            cell.quanTextField.text = textfieldContents[30]
            cell.checkBox.tag = 30
            cell.checkBox.selected = checkStatus[30]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 25{
            cell.quanTextField.tag = 31
            cell.quanTextField.text = textfieldContents[31]
            cell.checkBox.tag = 31
            cell.checkBox.selected = checkStatus[31]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 26{
            cell.quanTextField.tag = 32
            cell.quanTextField.text = textfieldContents[32]
            cell.checkBox.tag = 32
            cell.checkBox.selected = checkStatus[32]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 27{
            cell.quanTextField.tag = 33
            cell.quanTextField.text = textfieldContents[33]
            cell.checkBox.tag = 33
            cell.checkBox.selected = checkStatus[33]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 28{
            cell.quanTextField.tag = 34
            cell.quanTextField.text = textfieldContents[34]
            cell.checkBox.tag = 34
            cell.checkBox.selected = checkStatus[34]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 29{
            cell.quanTextField.tag = 35
            cell.quanTextField.text = textfieldContents[35]
            cell.checkBox.tag = 35
            cell.checkBox.selected = checkStatus[35]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 30{
            cell.quanTextField.tag = 36
            cell.quanTextField.text = textfieldContents[36]
            cell.checkBox.tag = 36
            cell.checkBox.selected = checkStatus[36]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 31{
            cell.quanTextField.tag = 37
            cell.quanTextField.text = textfieldContents[37]
            cell.checkBox.tag = 37
            cell.checkBox.selected = checkStatus[37]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 32{
            cell.quanTextField.tag = 38
            cell.quanTextField.text = textfieldContents[38]
            cell.checkBox.tag = 38
            cell.checkBox.selected = checkStatus[38]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 33{
            cell.quanTextField.tag = 39
            cell.quanTextField.text = textfieldContents[39]
            cell.checkBox.tag = 39
            cell.checkBox.selected = checkStatus[39]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 34{
            cell.quanTextField.tag = 40
            cell.quanTextField.text = textfieldContents[40]
            cell.checkBox.tag = 40
            cell.checkBox.selected = checkStatus[40]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 35{
            cell.quanTextField.tag = 41
            cell.quanTextField.text = textfieldContents[41]
            cell.checkBox.tag = 41
            cell.checkBox.selected = checkStatus[41]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 36{
            cell.quanTextField.tag = 42
            cell.quanTextField.text = textfieldContents[42]
            cell.checkBox.tag = 42
            cell.checkBox.selected = checkStatus[42]
            
        }
        if indexPath.section == 2 && indexPath.row == 0{
            cell.quanTextField.tag = 43
            cell.quanTextField.text = textfieldContents[43]
            cell.checkBox.tag = 43
            cell.checkBox.selected = checkStatus[43]
            
        }
        if indexPath.section == 2 && indexPath.row == 1{
            cell.quanTextField.tag = 44
            cell.quanTextField.text = textfieldContents[44]
            cell.checkBox.tag = 44
            cell.checkBox.selected = checkStatus[44]
            
        }
        if indexPath.section == 2 && indexPath.row == 2{
            cell.quanTextField.tag = 45
            cell.quanTextField.text = textfieldContents[45]
            cell.checkBox.tag = 45
            cell.checkBox.selected = checkStatus[45]
            
        }
        if indexPath.section == 2 && indexPath.row == 3{
            cell.quanTextField.tag = 46
            cell.quanTextField.text = textfieldContents[46]
            cell.checkBox.tag = 46
            cell.checkBox.selected = checkStatus[46]
            
        }
        if indexPath.section == 2 && indexPath.row == 4{
            cell.quanTextField.tag = 47
            cell.quanTextField.text = textfieldContents[47]
            cell.checkBox.tag = 47
            cell.checkBox.selected = checkStatus[47]
            
        }
        if indexPath.section == 3 && indexPath.row == 0{
            cell.quanTextField.tag = 48
            cell.quanTextField.text = textfieldContents[48]
            cell.checkBox.tag = 48
            cell.checkBox.selected = checkStatus[48]
            
        }
        if indexPath.section == 3 && indexPath.row == 1{
            cell.quanTextField.tag = 49
            cell.quanTextField.text = textfieldContents[49]
            cell.checkBox.tag = 49
            cell.checkBox.selected = checkStatus[49]
            
        }
        if indexPath.section == 3 && indexPath.row == 2{
            cell.quanTextField.tag = 50
            cell.quanTextField.text = textfieldContents[50]
            cell.checkBox.tag = 50
            cell.checkBox.selected = checkStatus[50]
            
        }
        if indexPath.section == 3 && indexPath.row == 3{
            cell.quanTextField.tag = 51
            cell.quanTextField.text = textfieldContents[51]
            cell.checkBox.tag = 51
            cell.checkBox.selected = checkStatus[51]
            
        }
        if indexPath.section == 3 && indexPath.row == 4{
            cell.quanTextField.tag = 52
            cell.quanTextField.text = textfieldContents[52]
            cell.checkBox.tag = 52
            cell.checkBox.selected = checkStatus[52]
            
        }
        if indexPath.section == 3 && indexPath.row == 5{
            cell.quanTextField.tag = 53
            cell.quanTextField.text = textfieldContents[53]
            cell.checkBox.tag = 53
            cell.checkBox.selected = checkStatus[53]
            
        }
        if indexPath.section == 3 && indexPath.row == 6{
            cell.quanTextField.tag = 54
            cell.quanTextField.text = textfieldContents[54]
            cell.checkBox.tag = 54
            cell.checkBox.selected = checkStatus[54]
            
        }
        if indexPath.section == 3 && indexPath.row == 7{
            cell.quanTextField.tag = 55
            cell.quanTextField.text = textfieldContents[55]
            cell.checkBox.tag = 55
            cell.checkBox.selected = checkStatus[55]
            
        }
        if indexPath.section == 3 && indexPath.row == 8{
            cell.quanTextField.tag = 56
            cell.quanTextField.text = textfieldContents[56]
            cell.checkBox.tag = 56
            cell.checkBox.selected = checkStatus[56]
            
        }
        if indexPath.section == 3 && indexPath.row == 9{
            cell.quanTextField.tag = 57
            cell.quanTextField.text = textfieldContents[57]
            cell.checkBox.tag = 57
            cell.checkBox.selected = checkStatus[57]
            
        }
        if indexPath.section == 4 && indexPath.row == 0{
            cell.quanTextField.tag = 58
            cell.quanTextField.text = textfieldContents[58]
            cell.checkBox.tag = 58
            cell.checkBox.selected = checkStatus[58]
            
        }
        if indexPath.section == 4 && indexPath.row == 1{
            cell.quanTextField.tag = 59
            cell.quanTextField.text = textfieldContents[59]
            cell.checkBox.tag = 59
            cell.checkBox.selected = checkStatus[59]
            
        }
        if indexPath.section == 4 && indexPath.row == 2{
            cell.quanTextField.tag = 60
            cell.quanTextField.text = textfieldContents[60]
            cell.checkBox.tag = 60
            cell.checkBox.selected = checkStatus[60]
            
        }
        if indexPath.section == 4 && indexPath.row == 3{
            cell.quanTextField.tag = 61
            cell.quanTextField.text = textfieldContents[61]
            cell.checkBox.tag = 61
            cell.checkBox.selected = checkStatus[61]
            
        }
        if indexPath.section == 4 && indexPath.row == 4{
            cell.quanTextField.tag = 62
            cell.quanTextField.text = textfieldContents[62]
            cell.checkBox.tag = 62
            cell.checkBox.selected = checkStatus[62]
            
        }
        if indexPath.section == 4 && indexPath.row == 5{
            cell.quanTextField.tag = 63
            cell.quanTextField.text = textfieldContents[63]
            cell.checkBox.tag = 63
            cell.checkBox.selected = checkStatus[63]
            
        }
        if indexPath.section == 4 && indexPath.row == 6{
            cell.quanTextField.tag = 64
            cell.quanTextField.text = textfieldContents[64]
            cell.checkBox.tag = 64
            cell.checkBox.selected = checkStatus[64]
            
        }
        if indexPath.section == 4 && indexPath.row == 7{
            cell.quanTextField.tag = 65
            cell.quanTextField.text = textfieldContents[65]
            cell.checkBox.tag = 65
            cell.checkBox.selected = checkStatus[65]
            
        }
        if indexPath.section == 4 && indexPath.row == 8{
            cell.quanTextField.tag = 66
            cell.quanTextField.text = textfieldContents[66]
            cell.checkBox.tag = 66
            cell.checkBox.selected = checkStatus[66]
            
        }
        if indexPath.section == 4 && indexPath.row == 9{
            cell.quanTextField.tag = 67
            cell.quanTextField.text = textfieldContents[67]
            cell.checkBox.tag = 67
            cell.checkBox.selected = checkStatus[67]
            
        }
        if indexPath.section == 5 && indexPath.row == 0{
            cell.quanTextField.tag = 68
            cell.quanTextField.text = textfieldContents[68]
            cell.checkBox.tag = 68
            cell.checkBox.selected = checkStatus[68]
            
        }
        if indexPath.section == 5 && indexPath.row == 1{
            cell.quanTextField.tag = 69
            cell.quanTextField.text = textfieldContents[69]
            cell.checkBox.tag = 69
            cell.checkBox.selected = checkStatus[69]
            
        }
        if indexPath.section == 5 && indexPath.row == 2{
            cell.quanTextField.tag = 70
            cell.quanTextField.text = textfieldContents[70]
            cell.checkBox.tag = 70
            cell.checkBox.selected = checkStatus[70]
            
        }
        if indexPath.section == 5 && indexPath.row == 3{
            cell.quanTextField.tag = 71
            cell.quanTextField.text = textfieldContents[71]
            cell.checkBox.tag = 71
            cell.checkBox.selected = checkStatus[71]
            
        }
        if indexPath.section == 5 && indexPath.row == 4{
            cell.quanTextField.tag = 72
            cell.quanTextField.text = textfieldContents[72]
            cell.checkBox.tag = 72
            cell.checkBox.selected = checkStatus[72]
            
        }
        if indexPath.section == 6 && indexPath.row == 0{
            cell.quanTextField.tag = 73
            cell.quanTextField.text = textfieldContents[73]
            cell.checkBox.tag = 73
            cell.checkBox.selected = checkStatus[73]
            
        }
        if indexPath.section == 6 && indexPath.row == 1{
            cell.quanTextField.tag = 74
            cell.quanTextField.text = textfieldContents[74]
            cell.checkBox.tag = 74
            cell.checkBox.selected = checkStatus[74]
            
        }
        if indexPath.section == 6 && indexPath.row == 2{
            cell.quanTextField.tag = 75
            cell.quanTextField.text = textfieldContents[75]
            cell.checkBox.tag = 75
            cell.checkBox.selected = checkStatus[75]
            
        }
        if indexPath.section == 6 && indexPath.row == 3{
            cell.quanTextField.tag = 76
            cell.quanTextField.text = textfieldContents[76]
            cell.checkBox.tag = 76
            cell.checkBox.selected = checkStatus[76]
            
        }
        if indexPath.section == 6 && indexPath.row == 4{
            cell.quanTextField.tag = 77
            cell.quanTextField.text = textfieldContents[77]
            cell.checkBox.tag = 77
            cell.checkBox.selected = checkStatus[77]
            
        }
        if indexPath.section == 6 && indexPath.row == 5{
            cell.quanTextField.tag = 78
            cell.quanTextField.text = textfieldContents[78]
            cell.checkBox.tag = 78
            cell.checkBox.selected = checkStatus[78]
            
        }
        if indexPath.section == 7 && indexPath.row == 0{
            cell.quanTextField.tag = 79
            cell.quanTextField.text = textfieldContents[79]
            cell.checkBox.tag = 79
            cell.checkBox.selected = checkStatus[79]
            
        }
        if indexPath.section == 7 && indexPath.row == 1{
            cell.quanTextField.tag = 80
            cell.quanTextField.text = textfieldContents[80]
            cell.checkBox.tag = 80
            cell.checkBox.selected = checkStatus[80]
            
        }
        if indexPath.section == 7 && indexPath.row == 2{
            cell.quanTextField.tag = 81
            cell.quanTextField.text = textfieldContents[81]
            cell.checkBox.tag = 81
            cell.checkBox.selected = checkStatus[81]
            
        }
        if indexPath.section == 7 && indexPath.row == 3{
            cell.quanTextField.tag = 82
            cell.quanTextField.text = textfieldContents[82]
            cell.checkBox.tag = 82
            cell.checkBox.selected = checkStatus[82]
            
        }
        if indexPath.section == 8 && indexPath.row == 0{
            cell.quanTextField.tag = 83
            cell.quanTextField.text = textfieldContents[83]
            cell.checkBox.tag = 83
            cell.checkBox.selected = checkStatus[83]
            
        }
        if indexPath.section == 8 && indexPath.row == 1{
            cell.quanTextField.tag = 84
            cell.quanTextField.text = textfieldContents[84]
            cell.checkBox.tag = 84
            cell.checkBox.selected = checkStatus[84]
            
        }
        if indexPath.section == 8 && indexPath.row == 2{
            cell.quanTextField.tag = 85
            cell.quanTextField.text = textfieldContents[85]
            cell.checkBox.tag = 85
            cell.checkBox.selected = checkStatus[85]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 3{
            cell.quanTextField.tag = 86
            cell.quanTextField.text = textfieldContents[86]
            cell.checkBox.tag = 86
            cell.checkBox.selected = checkStatus[86]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 4{
            cell.quanTextField.tag = 87
            cell.quanTextField.text = textfieldContents[87]
            cell.checkBox.tag = 87
            cell.checkBox.selected = checkStatus[87]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 5{
            cell.quanTextField.tag = 88
            cell.quanTextField.text = textfieldContents[88]
            cell.checkBox.tag = 88
            cell.checkBox.selected = checkStatus[88]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 6{
            cell.quanTextField.tag = 89
            cell.quanTextField.text = textfieldContents[89]
            cell.checkBox.tag = 89
            cell.checkBox.selected = checkStatus[89]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 7{
            cell.quanTextField.tag = 90
            cell.quanTextField.text = textfieldContents[90]
            cell.checkBox.tag = 90
            cell.checkBox.selected = checkStatus[90]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 8{
            cell.quanTextField.tag = 91
            cell.quanTextField.text = textfieldContents[91]
            cell.checkBox.tag = 91
            cell.checkBox.selected = checkStatus[91]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 9{
            cell.quanTextField.tag = 92
            cell.quanTextField.text = textfieldContents[92]
            cell.checkBox.tag = 92
            cell.checkBox.selected = checkStatus[92]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 10{
            cell.quanTextField.tag = 93
            cell.quanTextField.text = textfieldContents[93]
            cell.checkBox.tag = 93
            cell.checkBox.selected = checkStatus[93]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 11{
            cell.quanTextField.tag = 94
            cell.quanTextField.text = textfieldContents[94]
            cell.checkBox.tag = 94
            cell.checkBox.selected = checkStatus[94]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 12{
            cell.quanTextField.tag = 95
            cell.quanTextField.text = textfieldContents[95]
            cell.checkBox.tag = 95
            cell.checkBox.selected = checkStatus[95]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 13{
            cell.quanTextField.tag = 96
            cell.quanTextField.text = textfieldContents[96]
            cell.checkBox.tag = 96
            cell.checkBox.selected = checkStatus[96]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 14{
            cell.quanTextField.tag = 97
            cell.quanTextField.text = textfieldContents[97]
            cell.checkBox.tag = 97
            cell.checkBox.selected = checkStatus[97]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 15{
            cell.quanTextField.tag = 98
            cell.quanTextField.text = textfieldContents[98]
            cell.checkBox.tag = 98
            cell.checkBox.selected = checkStatus[98]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 16{
            cell.quanTextField.tag = 99
            cell.quanTextField.text = textfieldContents[99]
            cell.checkBox.tag = 99
            cell.checkBox.selected = checkStatus[99]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 17{
            cell.quanTextField.tag = 100
            cell.quanTextField.text = textfieldContents[100]
            cell.checkBox.tag = 100
            cell.checkBox.selected = checkStatus[100]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 18{
            cell.quanTextField.tag = 101
            cell.quanTextField.text = textfieldContents[101]
            cell.checkBox.tag = 101
            cell.checkBox.selected = checkStatus[101]
            
        }
        if indexPath.section == 9 && indexPath.row == 0{
            cell.quanTextField.tag = 102
            cell.quanTextField.text = textfieldContents[102]
            cell.checkBox.tag = 102
            cell.checkBox.selected = checkStatus[102]
            
        }
        if indexPath.section == 9 && indexPath.row == 1{
            cell.quanTextField.tag = 103
            cell.quanTextField.text = textfieldContents[101]
            cell.checkBox.tag = 103
            cell.checkBox.selected = checkStatus[103]
            
        }
        if indexPath.section == 9 && indexPath.row == 2{
            cell.quanTextField.tag = 104
            cell.quanTextField.text = textfieldContents[104]
            cell.checkBox.tag = 104
            cell.checkBox.selected = checkStatus[104]
            
        }
        if indexPath.section == 9 && indexPath.row == 3{
            cell.quanTextField.tag = 105
            cell.quanTextField.text = textfieldContents[105]
            cell.checkBox.tag = 105
            cell.checkBox.selected = checkStatus[105]
            
        }
        if indexPath.section == 9 && indexPath.row == 4{
            cell.quanTextField.tag = 106
            cell.quanTextField.text = textfieldContents[106]
            cell.checkBox.tag = 106
            cell.checkBox.selected = checkStatus[106]
            
        }
        if indexPath.section == 9 && indexPath.row == 5{
            cell.quanTextField.tag = 107
            cell.quanTextField.text = textfieldContents[107]
            cell.checkBox.tag = 107
            cell.checkBox.selected = checkStatus[107]
            
        }
        if indexPath.section == 9 && indexPath.row == 6{
            cell.quanTextField.tag = 108
            cell.quanTextField.text = textfieldContents[108]
            cell.checkBox.tag = 108
            cell.checkBox.selected = checkStatus[108]
            
        }
        if indexPath.section == 9 && indexPath.row == 7{
            cell.quanTextField.tag = 109
            cell.quanTextField.text = textfieldContents[109]
            cell.checkBox.tag = 109
            cell.checkBox.selected = checkStatus[109]
            
        }
        if indexPath.section == 9 && indexPath.row == 8{
            cell.quanTextField.tag = 110
            cell.quanTextField.text = textfieldContents[110]
            cell.checkBox.tag = 110
            cell.checkBox.selected = checkStatus[110]
            
        }
        if indexPath.section == 9 && indexPath.row == 9{
            cell.quanTextField.tag = 111
            cell.quanTextField.text = textfieldContents[111]
            cell.checkBox.tag = 111
            cell.checkBox.selected = checkStatus[111]
            
        }
        if indexPath.section == 10 && indexPath.row == 0{
            cell.quanTextField.tag = 112
            cell.quanTextField.text = textfieldContents[112]
            cell.checkBox.tag = 112
            cell.checkBox.selected = checkStatus[112]
            
        }
        if indexPath.section == 10 && indexPath.row == 1{
            cell.quanTextField.tag = 113
            cell.quanTextField.text = textfieldContents[113]
            cell.checkBox.tag = 113
            cell.checkBox.selected = checkStatus[113]
            
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
