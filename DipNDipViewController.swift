//
//  DipNDipViewController.swift
//  YallaJeye
//
//  Created by Andrew  on 1/3/16.
//  Copyright © 2016 Andrew E. Ibrahim. All rights reserved.
//

import UIKit
import Foundation

class DipNDipViewController: UIViewController, UITextFieldDelegate {
    
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

   let allItems: Array<String> = ["Dip n dip crêpe","Fettuccini  crêpe(small) ","Fettuccini crêpe(original size)","Cinnamon crêpe pouch", "Tripple chocolate crêpe", "Cookies crêpe","Mallow crêpe", "Brownies crêpe","Krispy crêpe", "Banana wrap","Dip n dip waffle","Chocolate waffle  ","Waffle stick","Pancake mini tower","Fondant","Molten cake","Brownies","Dip n dip pizza","Chocolate mousse","Trois chocolat mousse","Succès","Mini muffin ","Cookies ","Dip n Dip éclair pyramid ","Éclair Kebab ","Profiterole","Scoop ","Crunchy ice cream","Chocolate shot","Chocolate","Home chocolate fountain","Chocolate fondue set","Pain Perdu","Cheese cake nuggets","Dip Crispies","Fruits In a cup","Brownies in a cup","Dip sticks","Dip sticks","Dip stick platter","Dip-able items (full plate)","Brownies, mini éclair","Ice cream (scoop)","Fondue","Whipped cream","Dip n dip freezy","Chocolate milk shake","Vanilla milk shake","Strawberry  milk shake","Coffee shake","Banana milk shake","After eight milk shake","Mocha  frappe","White mocha frappe","Caramel frappe","Cookies frappe","Pink frappe","Creamy smoothies","Smoothie float","Oreo milk shake","Affogato","Ice tea shake","Lemon tea shake","Mint tea shake","Peach tea shake","Raspberry tea shake","Iced cappuccino","Ice tea","Italian soda","Flavored cola","Pop","Perrier","Redbull","Spring water"]
    
    
    
    
    let allSections: Array<String> = ["Crepes","Waffle","Pancake","Chocolate rich","Baked goods","Ice cream","Chocolate shot","Chocolate","Dip n Dip Gifts","Fried yummies","Stuff in a cup ","Dip Sticks","Dip n dip mania","Chocolates","Milk shake", "Frappe", "Smoothies", "Ice tea shakes", "Soft drinks"]
    
    let allPrices: Array<Int> = [13000,12500,11000,10500,8000,10000,10000,10500,10000,9000,13000,9500,8000,8000,9500,9500,7500,9000,7000,7000,8000,7000,3500,11500,6000,8000,3000,7500,4000,4000,0,0,9000,9000,7000,7500,8500,3500,6000,16500,3500,4000,3000,7000, 1000,9500,7000,7000,7000,9000,7500,7500,7500,7500,7500,8000,7500,8000,9000,8000,5000,7000,7000,7000,7000,7000,7000,6000,5000,5000,3000,3000,6000,1500]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayForBool = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"]
        sectionTitleArray = ["Crepes","Waffle","Pancake","Chocolate rich","Baked goods","Ice cream","Chocolate shot","Chocolate","Dip n Dip Gifts","Fried yummies","Stuff in a cup ","Dip Sticks","Dip n dip mania","Chocolates","Milk shake", "Frappe", "Smoothies", "Ice tea shakes", "Soft drinks"]
        
        let tmp1 : NSArray = ["Dip n dip crêpe","Fettuccini  crêpe ","Fettuccini crêpe","Cinnamon crêpe pouch", "Tripple chocolate crêpe", "Cookies crêpe","Mallow crêpe", "Brownies crêpe","Krispy crêpe", "Banana wrap"]
        
        let tmp1d : NSArray = ["(strawberry, banana, pineapple, kiwi)","(small)","(original size)","(banana, apple, cheese creme, cinnamon)","(milk, dark, white)","(milk, dark, white)","","","(milk, dark, white)",""]

        let tmp2 : NSArray = ["Dip n dip waffle","Chocolate waffle  ","Waffle stick"]
        
        let tmp2d : NSArray = ["","",""]
        
        let tmp3: NSArray = ["Pancake mini tower"]
        
         let tmp3d : NSArray = [""]
        
        let tmp4: NSArray = ["Fondant","Molten cake","Brownies","Dip n dip pizza","Chocolate mousse","Trois chocolat mousse","Succès"]
        
        let tmp4d: NSArray  = ["","","","","","",""]
        
        let tmp5: NSArray = ["Mini muffin ","Cookies ","Dip n Dip éclair pyramid ","Éclair Kebab ","Profiterole "]
        
        let tmp5d: NSArray = ["","","","",""]
        
        let tmp6: NSArray = ["Scoop","Crunchy ice cream "]
        
        let tmp6d: NSArray = ["(strawberry, chocolate, vanilla)",""]
        
        let tmp7: NSArray = ["Chocolate shot"]
        
        let tmp7d: NSArray = ["(A shot Glass filled with your choice of chocolate)"]
        
        let tmp8: NSArray = ["Chocolate"]
        
        let tmp8d: NSArray = ["(milk, dark or white real Belgian chocolate, 1KG)"]
        
        let tmp9: NSArray = ["Home chocolate fountain","Chocolate fondue set"]
        
        let tmp9d: NSArray = ["(ask staff for models and pricing)","(ask staff for models and pricing) "]
        
        let tmp10: NSArray = ["Pain Perdu","Cheese cake nuggets"]
        
         let tmp10d: NSArray = ["(Toast with caramel and cinnamon or chocolate. With a scoop of ice cream)","(5 pieces offered with chocolate)"]
        
        let tmp11: NSArray = ["Dip Crispies","Fruits In a cup","Brownies in a cup"]
        
        let tmp11d: NSArray = ["(cereal and chocolate, tapped with mini marshmallows)","(tapped with chocolate and whipped cream)","(with ice cream and chocolate)"]
        
        let tmp12: NSArray = ["Dip sticks","Dip sticks","Dip stick platter"]
        
        let tmp12d: NSArray = ["(4 pieces)","(8 pieces)","(A platter filled with 4 pieces of  7 of your choice)"]
        
        
        
        let tmp13: NSArray = ["Dip-able items (full plate)","Brownies, mini éclair","Ice cream (scoop)"]
        
         let tmp13d: NSArray = ["(full plate)","", "","(scoop)"]
        
        
        let tmp14: NSArray = ["Fondue","Whipped cream"]
        
        let tmp14d: NSArray = ["",""]
        
        let tmp15: NSArray = ["Dip n dip freezy","Chocolate milk shake","Vanilla milk shake","Strawberry  milk shake","Coffee shake","Banana milk shake","After eight milk shake"]
        
         let tmp15d: NSArray = ["","","","","","",""]
        
        let tmp16: NSArray = ["Mocha  frappe","White mocha frappe","Caramel frappe","Cookies frappe","Pink frappe"]
        
        let tmp16d: NSArray = ["","","","",""]
        
        let tmp17: NSArray = ["Creamy smoothies","Smoothie float","Oreo milk shake","Affogato"]
        
        let tmp17d: NSArray = ["","","",""]

        
        let tmp18: NSArray = ["Ice tea shake","Lemon tea shake","Mint tea shake","Peach tea shake","Raspberry tea shake","Iced cappuccino"]
        
        let tmp18d: NSArray = ["","","","","",""]
        
        let tmp19: NSArray = ["Ice tea","Italian soda","Flavored cola","Pop","Perrier","Redbull","Spring water"]
        
        
         let tmp19d: NSArray = ["","","","(Pepsi-Diet pepsi-7up-Diet 7up)","","",""]

        
        let tmp1Prices: NSArray = [13000,12500,11000,10500,8000,10000,10000,10500,10000,9000]
        let tmp2Prices: NSArray = [13000,9500,8000]
        let tmp3Prices: NSArray = [8000]
        let tmp4Prices: NSArray = [9500,9500,7500,9000,7000,7000,8000]
        let tmp5Prices: NSArray = [7000,3500,11500,6000,8000]
        let tmp6Prices: NSArray = [3000,7500]
        let tmp7Prices: NSArray = [4000]
        let tmp8Prices: NSArray = [60000]
        let tmp9Prices: NSArray = [0,0]
        let tmp10Prices: NSArray = [9000,9000]
        let tmp11Prices: NSArray = [7000,7500,8500]
        let tmp12Prices: NSArray = [3500,6000,16500]
        let tmp13Prices: NSArray = [3500,4000,3000]
        let tmp14Prices: NSArray = [7000, 1000]
        let tmp15Prices: NSArray = [9500,7000,7000,7000,9000,7500,7500]
        let tmp16Prices: NSArray = [7500,7500,7500,8000,7500]
        let tmp17Prices: NSArray = [8000,9000,8000,5000]
        let tmp18Prices: NSArray = [7000,7000,7000,7000,7000,7000]
        let tmp19Prices: NSArray = [6000,5000,5000,3000,3000,6000,1500]
        
        print(textfieldContents.count)
      
        tableView.allowsSelection = false
        
        let barFont = UIFont (name: "Babiole", size: 20)
      
        
        navigationController!.navigationBar.barTintColor = UIColor.redColor()
        confirmB.setTitleTextAttributes([NSFontAttributeName: barFont!, NSForegroundColorAttributeName:UIColor.whiteColor()], forState: UIControlState.Normal)
        let titleDict: NSDictionary = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        var string1 = sectionTitleArray .objectAtIndex(0) as? String
        var price1 = "LL"
        var descr = "d"
        descr += (sectionTitleArray .objectAtIndex(0) as? String)!
        price1 += (sectionTitleArray .objectAtIndex(0) as? String)!
        [sectionContentDict .setValue(tmp1, forKey:string1! )]
        [sectionContentDict .setValue(tmp1Prices, forKey:price1 )]
        [sectionContentDict .setValue(tmp1d, forKey: descr)]
        print(descr+"HERE!!")
       
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
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(9) as? String)!
        [sectionContentDict .setValue(tmp10d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(9) as? String)!
        string1 = sectionTitleArray .objectAtIndex(9) as? String
        [sectionContentDict .setValue(tmp10, forKey:string1! )]
        [sectionContentDict .setValue(tmp10Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(10) as? String)!
        [sectionContentDict .setValue(tmp11d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(10) as? String)!
        string1 = sectionTitleArray .objectAtIndex(10) as? String
        [sectionContentDict .setValue(tmp11, forKey:string1! )]
        [sectionContentDict .setValue(tmp11Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(11) as? String)!
        [sectionContentDict .setValue(tmp12d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(11) as? String)!
        string1 = sectionTitleArray .objectAtIndex(11) as? String
        [sectionContentDict .setValue(tmp12, forKey:string1! )]
        [sectionContentDict .setValue(tmp12Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(12) as? String)!
        [sectionContentDict .setValue(tmp13d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(12) as? String)!
        string1 = sectionTitleArray .objectAtIndex(12) as? String
        [sectionContentDict .setValue(tmp13, forKey:string1! )]
        [sectionContentDict .setValue(tmp13Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(13) as? String)!
        [sectionContentDict .setValue(tmp14d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(13) as? String)!
        string1 = sectionTitleArray .objectAtIndex(13) as? String
        [sectionContentDict .setValue(tmp14, forKey:string1! )]
        [sectionContentDict .setValue(tmp14Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(14) as? String)!
        [sectionContentDict .setValue(tmp15d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(14) as? String)!
        string1 = sectionTitleArray .objectAtIndex(14) as? String
        [sectionContentDict .setValue(tmp15, forKey:string1! )]
        [sectionContentDict .setValue(tmp15Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(15) as? String)!
        [sectionContentDict .setValue(tmp16d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(15) as? String)!
        string1 = sectionTitleArray .objectAtIndex(15) as? String
        [sectionContentDict .setValue(tmp16, forKey:string1! )]
        [sectionContentDict .setValue(tmp16Prices, forKey:price1 )]
        
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(16) as? String)!
        [sectionContentDict .setValue(tmp17d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(16) as? String)!
        string1 = sectionTitleArray .objectAtIndex(16) as? String
        [sectionContentDict .setValue(tmp17, forKey:string1! )]
        [sectionContentDict .setValue(tmp17Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(17) as? String)!
        [sectionContentDict .setValue(tmp18d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(17) as? String)!
        string1 = sectionTitleArray .objectAtIndex(17) as? String
        [sectionContentDict .setValue(tmp18, forKey:string1! )]
        [sectionContentDict .setValue(tmp18Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(18) as? String)!
        [sectionContentDict .setValue(tmp19d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(18) as? String)!
        string1 = sectionTitleArray .objectAtIndex(18) as? String
        [sectionContentDict .setValue(tmp19, forKey:string1! )]
        [sectionContentDict .setValue(tmp19Prices, forKey:price1 )]
        
       
        
        
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
        NSUserDefaults.standardUserDefaults().setObject("DipNDip", forKey: "restoName")
        
      
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
        
        
        if indexPath.section == 1 && indexPath.row == 0{
            cell.quanTextField.tag = 10
            cell.quanTextField.text = textfieldContents[10]
            cell.checkBox.tag = 10
            cell.checkBox.selected = checkStatus[10]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 1{
            cell.quanTextField.tag = 11
            cell.quanTextField.text = textfieldContents[11]
            cell.checkBox.tag = 11
            cell.checkBox.selected = checkStatus[11]
            
        }
        
        if indexPath.section == 1 && indexPath.row == 2{
            cell.quanTextField.tag = 12
            cell.quanTextField.text = textfieldContents[12]
            cell.checkBox.tag = 12
            cell.checkBox.selected = checkStatus[12]
            
        }
        
        
        if indexPath.section == 2 && indexPath.row == 0{
            cell.quanTextField.tag = 13
            cell.quanTextField.text = textfieldContents[13]
            cell.checkBox.tag = 13
            cell.checkBox.selected = checkStatus[13]
        }
        
        if indexPath.section == 3 && indexPath.row == 0{
            cell.quanTextField.tag = 14
            cell.quanTextField.text = textfieldContents[14]
            cell.checkBox.tag = 14
            cell.checkBox.selected = checkStatus[14]
        }
        
        if indexPath.section == 3 && indexPath.row == 1{
            cell.quanTextField.tag = 15
            cell.quanTextField.text = textfieldContents[15]
            cell.checkBox.tag = 15
            cell.checkBox.selected = checkStatus[15]
        }
        
        if indexPath.section == 3 && indexPath.row == 2{
            cell.quanTextField.tag = 16
            cell.quanTextField.text = textfieldContents[16]
            cell.checkBox.tag = 16
            cell.checkBox.selected = checkStatus[16]
        }
        
        if indexPath.section == 3 && indexPath.row == 3{
            cell.quanTextField.tag = 17
            cell.quanTextField.text = textfieldContents[17]
            cell.checkBox.tag = 17
            cell.checkBox.selected = checkStatus[17]
        }
        
        if indexPath.section == 3 && indexPath.row == 4{
            cell.quanTextField.tag = 18
            cell.quanTextField.text = textfieldContents[18]
            cell.checkBox.tag = 18
            cell.checkBox.selected = checkStatus[18]
        }
        if indexPath.section == 3 && indexPath.row == 5{
            cell.quanTextField.tag = 19
            cell.quanTextField.text = textfieldContents[19]
            cell.checkBox.tag = 19
            cell.checkBox.selected = checkStatus[19]
        }
        
        if indexPath.section == 3 && indexPath.row == 6{
            cell.quanTextField.tag = 20
            cell.quanTextField.text = textfieldContents[20]
            cell.checkBox.tag = 20
            cell.checkBox.selected = checkStatus[20]
        }
        
        if indexPath.section == 4 && indexPath.row == 0{
            cell.quanTextField.tag = 21
            cell.quanTextField.text = textfieldContents[21]
            cell.checkBox.tag = 21
            cell.checkBox.selected = checkStatus[21]
        }
        
        if indexPath.section == 4 && indexPath.row == 1{
            cell.quanTextField.tag = 22
            cell.quanTextField.text = textfieldContents[22]
            cell.checkBox.tag = 22
            cell.checkBox.selected = checkStatus[22]
        }
        
        if indexPath.section == 4 && indexPath.row == 2{
            cell.quanTextField.tag = 23
            cell.quanTextField.text = textfieldContents[23]
            cell.checkBox.tag = 23
            cell.checkBox.selected = checkStatus[23]
        }
        
        if indexPath.section == 4 && indexPath.row == 3{
            cell.quanTextField.tag = 24
            cell.quanTextField.text = textfieldContents[24]
            cell.checkBox.tag = 24
            cell.checkBox.selected = checkStatus[24]
        }
        
        if indexPath.section == 4 && indexPath.row == 4{
            cell.quanTextField.tag = 25
            cell.quanTextField.text = textfieldContents[25]
            cell.checkBox.tag = 25
            cell.checkBox.selected = checkStatus[25]
        }
        
        if indexPath.section == 5 && indexPath.row == 0{
            cell.quanTextField.tag = 26
            cell.quanTextField.text = textfieldContents[26]
            cell.checkBox.tag = 26
            cell.checkBox.selected = checkStatus[26]
        }
        
        if indexPath.section == 5 && indexPath.row == 1{
            cell.quanTextField.tag = 27
            cell.quanTextField.text = textfieldContents[27]
            cell.checkBox.tag = 27
            cell.checkBox.selected = checkStatus[27]
        }
        
        if indexPath.section == 6 && indexPath.row == 0{
            cell.quanTextField.tag = 28
            cell.quanTextField.text = textfieldContents[28]
            cell.checkBox.tag = 28
            cell.checkBox.selected = checkStatus[28]
        }
        
        if indexPath.section == 7 && indexPath.row == 0{
            cell.quanTextField.tag = 29
            cell.quanTextField.text = textfieldContents[29]
            cell.checkBox.tag = 29
            cell.checkBox.selected = checkStatus[29]
        }
        
        if indexPath.section == 8 && indexPath.row == 0{
            cell.quanTextField.tag = 30
            cell.quanTextField.text = textfieldContents[30]
            cell.checkBox.tag = 30
            cell.checkBox.selected = checkStatus[30]
        }
        
        if indexPath.section == 8 && indexPath.row == 1{
            cell.quanTextField.tag = 31
            cell.quanTextField.text = textfieldContents[31]
            cell.checkBox.tag = 31
            cell.checkBox.selected = checkStatus[31]
        }
        
        if indexPath.section == 9 && indexPath.row == 0{
            cell.quanTextField.tag = 32
            cell.quanTextField.text = textfieldContents[32]
            cell.checkBox.tag = 32
            cell.checkBox.selected = checkStatus[32]
        }
        
        if indexPath.section == 9 && indexPath.row == 1{
            cell.quanTextField.tag = 33
            cell.quanTextField.text = textfieldContents[33]
            cell.checkBox.tag = 33
            cell.checkBox.selected = checkStatus[33]
        }
        
        if indexPath.section == 10 && indexPath.row == 0{
            cell.quanTextField.tag = 34
            cell.quanTextField.text = textfieldContents[34]
            cell.checkBox.tag = 34
            cell.checkBox.selected = checkStatus[34]
        }
        
        if indexPath.section == 10 && indexPath.row == 1{
            cell.quanTextField.tag = 35
            cell.quanTextField.text = textfieldContents[35]
            cell.checkBox.tag = 35
            cell.checkBox.selected = checkStatus[35]
        }
        
        if indexPath.section == 10 && indexPath.row == 2{
            cell.quanTextField.tag = 36
            cell.quanTextField.text = textfieldContents[36]
            cell.checkBox.tag = 36
            cell.checkBox.selected = checkStatus[36]
        }
        
        if indexPath.section == 11 && indexPath.row == 0{
            cell.quanTextField.tag = 37
            cell.quanTextField.text = textfieldContents[37]
            cell.checkBox.tag = 37
            cell.checkBox.selected = checkStatus[37]
        }
        
        if indexPath.section == 11 && indexPath.row == 1{
            cell.quanTextField.tag = 38
            cell.quanTextField.text = textfieldContents[38]
            cell.checkBox.tag = 38
            cell.checkBox.selected = checkStatus[38]
        }
        
        if indexPath.section == 11 && indexPath.row == 2{
            cell.quanTextField.tag = 39
            cell.quanTextField.text = textfieldContents[39]
            cell.checkBox.tag = 39
            cell.checkBox.selected = checkStatus[39]
        }
        
        if indexPath.section == 12 && indexPath.row == 0{
            cell.quanTextField.tag = 40
            cell.quanTextField.text = textfieldContents[40]
            cell.checkBox.tag = 40
            cell.checkBox.selected = checkStatus[40]
        }
        
        if indexPath.section == 12 && indexPath.row == 1{
            cell.quanTextField.tag = 41
            cell.quanTextField.text = textfieldContents[41]
            cell.checkBox.tag = 41
            cell.checkBox.selected = checkStatus[41]
        }
        
        if indexPath.section == 12 && indexPath.row == 2{
            cell.quanTextField.tag = 42
            cell.quanTextField.text = textfieldContents[42]
            cell.checkBox.tag = 42
            cell.checkBox.selected = checkStatus[42]
        }
        
        if indexPath.section == 13 && indexPath.row == 0{
            cell.quanTextField.tag = 43
            cell.quanTextField.text = textfieldContents[43]
            cell.checkBox.tag = 43
            cell.checkBox.selected = checkStatus[43]
        }
        
        if indexPath.section == 13 && indexPath.row == 1{
            cell.quanTextField.tag = 44
            cell.quanTextField.text = textfieldContents[44]
            cell.checkBox.tag = 44
            cell.checkBox.selected = checkStatus[44]
        }
        
        
        if indexPath.section == 14 && indexPath.row == 0{
            cell.quanTextField.tag = 45
            cell.quanTextField.text = textfieldContents[45]
            cell.checkBox.tag = 45
            cell.checkBox.selected = checkStatus[45]
        }
        
        if indexPath.section == 14 && indexPath.row == 1{
            cell.quanTextField.tag = 46
            cell.quanTextField.text = textfieldContents[46]
            cell.checkBox.tag = 46
            cell.checkBox.selected = checkStatus[46]
        }
        
        if indexPath.section == 14 && indexPath.row == 2{
            cell.quanTextField.tag = 47
            cell.quanTextField.text = textfieldContents[47]
            cell.checkBox.tag = 47
            cell.checkBox.selected = checkStatus[47]
        }
        
        if indexPath.section == 14 && indexPath.row == 3{
            cell.quanTextField.tag = 48
            cell.quanTextField.text = textfieldContents[48]
            cell.checkBox.tag = 48
            cell.checkBox.selected = checkStatus[48]
        }
        
        if indexPath.section == 14 && indexPath.row == 4{
            cell.quanTextField.tag = 49
            cell.quanTextField.text = textfieldContents[49]
            cell.checkBox.tag = 49
            cell.checkBox.selected = checkStatus[49]
        }
        
        if indexPath.section == 14 && indexPath.row == 5{
            cell.quanTextField.tag = 50
            cell.quanTextField.text = textfieldContents[50]
            cell.checkBox.tag = 50
            cell.checkBox.selected = checkStatus[50]
        }
        
        if indexPath.section == 14 && indexPath.row == 6{
            cell.quanTextField.tag = 51
            cell.quanTextField.text = textfieldContents[51]
            cell.checkBox.tag = 51
            cell.checkBox.selected = checkStatus[51]
        }
        
        
        if indexPath.section == 15 && indexPath.row == 0{
            cell.quanTextField.tag = 52
            cell.quanTextField.text = textfieldContents[52]
            cell.checkBox.tag = 52
            cell.checkBox.selected = checkStatus[52]
        }
        
        if indexPath.section == 15 && indexPath.row == 1{
            cell.quanTextField.tag = 53
            cell.quanTextField.text = textfieldContents[53]
            cell.checkBox.tag = 53
            cell.checkBox.selected = checkStatus[53]
        }
        
        
        if indexPath.section == 15 && indexPath.row == 2{
            cell.quanTextField.tag = 54
            cell.quanTextField.text = textfieldContents[54]
            cell.checkBox.tag = 54
            cell.checkBox.selected = checkStatus[54]
        }
        
        
        if indexPath.section == 15 && indexPath.row == 3{
            cell.quanTextField.tag = 55
            cell.quanTextField.text = textfieldContents[55]
            cell.checkBox.tag = 55
            cell.checkBox.selected = checkStatus[55]
        }
        
        
        if indexPath.section == 15 && indexPath.row == 4{
            cell.quanTextField.tag = 56
            cell.quanTextField.text = textfieldContents[56]
            cell.checkBox.tag = 56
            cell.checkBox.selected = checkStatus[56]
        }
        
        
        if indexPath.section == 16 && indexPath.row == 0{
            cell.quanTextField.tag = 57
            cell.quanTextField.text = textfieldContents[57]
            cell.checkBox.tag = 57
            cell.checkBox.selected = checkStatus[57]
        }
        
        
        if indexPath.section == 16 && indexPath.row == 1{
            cell.quanTextField.tag = 58
            cell.quanTextField.text = textfieldContents[58]
            cell.checkBox.tag = 58
            cell.checkBox.selected = checkStatus[58]
        }
        
        if indexPath.section == 16 && indexPath.row == 2{
            cell.quanTextField.tag = 59
            cell.quanTextField.text = textfieldContents[59]
            cell.checkBox.tag = 59
            cell.checkBox.selected = checkStatus[59]
        }
        
        if indexPath.section == 16 && indexPath.row == 3{
            cell.quanTextField.tag = 60
            cell.quanTextField.text = textfieldContents[60]
            cell.checkBox.tag = 60
            cell.checkBox.selected = checkStatus[60]
        }
        
        if indexPath.section == 17 && indexPath.row == 0{
            cell.quanTextField.tag = 61
            cell.quanTextField.text = textfieldContents[61]
            cell.checkBox.tag = 61
            cell.checkBox.selected = checkStatus[61]
        }
        if indexPath.section == 17 && indexPath.row == 1{
            cell.quanTextField.tag = 62
            cell.quanTextField.text = textfieldContents[62]
            cell.checkBox.tag = 62
            cell.checkBox.selected = checkStatus[62]
        }
        
        if indexPath.section == 17 && indexPath.row == 2{
            cell.quanTextField.tag = 63
            cell.quanTextField.text = textfieldContents[63]
            cell.checkBox.tag = 63
            cell.checkBox.selected = checkStatus[63]
        }
        
        if indexPath.section == 17 && indexPath.row == 3{
            cell.quanTextField.tag = 64
            cell.quanTextField.text = textfieldContents[64]
            cell.checkBox.tag = 64
            cell.checkBox.selected = checkStatus[64]
        }
        
        if indexPath.section == 17 && indexPath.row == 4{
            cell.quanTextField.tag = 65
            cell.quanTextField.text = textfieldContents[65]
            cell.checkBox.tag = 65
            cell.checkBox.selected = checkStatus[65]
        }
        
        if indexPath.section == 17 && indexPath.row == 5{
            cell.quanTextField.tag = 66
            cell.quanTextField.text = textfieldContents[66]
            cell.checkBox.tag = 66
            cell.checkBox.selected = checkStatus[66]
        }
        
        if indexPath.section == 18 && indexPath.row == 0{
            cell.quanTextField.tag = 67
            cell.quanTextField.text = textfieldContents[67]
            cell.checkBox.tag = 67
            cell.checkBox.selected = checkStatus[67]
        }
        
        if indexPath.section == 18 && indexPath.row == 1{
            cell.quanTextField.tag = 68
            cell.quanTextField.text = textfieldContents[68]
            cell.checkBox.tag = 68
            cell.checkBox.selected = checkStatus[68]
        }
        
        
        if indexPath.section == 18 && indexPath.row == 2{
            cell.quanTextField.tag = 69
            cell.quanTextField.text = textfieldContents[69]
            cell.checkBox.tag = 69
            cell.checkBox.selected = checkStatus[69]
        }
        
        
        if indexPath.section == 18 && indexPath.row == 3{
            cell.quanTextField.tag = 70
            cell.quanTextField.text = textfieldContents[70]
            cell.checkBox.tag = 70
            cell.checkBox.selected = checkStatus[70]
        }
        
        
        if indexPath.section == 18 && indexPath.row == 4{
            cell.quanTextField.tag = 71
            cell.quanTextField.text = textfieldContents[71]
            cell.checkBox.tag = 71
            cell.checkBox.selected = checkStatus[71]
        }
        
        
        if indexPath.section == 18 && indexPath.row == 5{
            cell.quanTextField.tag = 72
            cell.quanTextField.text = textfieldContents[72]
            cell.checkBox.tag = 72
            cell.checkBox.selected = checkStatus[72]
        }
        
        
        if indexPath.section == 18 && indexPath.row == 6{
            cell.quanTextField.tag = 73
            cell.quanTextField.text = textfieldContents[73]
            cell.checkBox.tag = 73
            cell.checkBox.selected = checkStatus[73]
        }
        
        
        
        
        
        
        
        
        
        

        
        
        
        
        
        
        
        
        
        
        return cell    }
    
    
    func textFieldDidChange(textField: UITextField) {
        print(textField.tag)
        
        if(textField.text == "12"){
            textField.text = "10"
        }
        
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