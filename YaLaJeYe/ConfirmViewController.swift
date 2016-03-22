//
//  ConfirmViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 1/7/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {
    var sumQ: Int = 0
    var sumP: Int = 0
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var totaAmount: UILabel!
    @IBOutlet weak var totaItems: UILabel!
    var itemsReceived: Array<String> = NSUserDefaults.standardUserDefaults().objectForKey("contents") as! Array<String>
    var itemsQReceived: Array<String> =  NSUserDefaults.standardUserDefaults().objectForKey("Quantity") as! Array<String>
    var itemsPrices: Array<Int>  = NSUserDefaults.standardUserDefaults().objectForKey("Prices") as! Array<Int>
    var restoName: String = NSUserDefaults.standardUserDefaults().objectForKey("restoName") as! String

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        for (_,elem) in itemsQReceived.enumerate(){
            
            self.sumQ += Int(elem)!
            
        }
        let sumL:String = "(" + String(self.sumQ) + ")"
        self.totaItems.text = sumL
        
        
        for (index,elem) in itemsPrices.enumerate(){
            
            let quant: Int = Int(self.itemsQReceived[index])!
           self.sumP += elem * quant
            
            
        }
        
        let sumpL:String = "Total Amount: " + String(self.sumP) + "LL"
        self.totaAmount.text = sumpL
        
    
        
        confirmButton.layer.cornerRadius = 10 // this value vary as per your desire
        confirmButton.clipsToBounds = true

    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
           self.itemsReceived.removeAtIndex(indexPath.row)
            self.itemsQReceived.removeAtIndex(indexPath.row)
            self.itemsPrices.removeAtIndex(indexPath.row)
            
            self.sumP = 0
            self.sumQ = 0
            
            tableView.deleteRowsAtIndexPaths([indexPath],  withRowAnimation: UITableViewRowAnimation.Automatic)
        }
        
        for (_,elem) in itemsQReceived.enumerate(){
            
            self.sumQ += Int(elem)!
            
        }
        let sumL:String = "(" + String(self.sumQ) + ")"
        self.totaItems.text = sumL
        
        
        for (index,elem) in itemsPrices.enumerate(){
            
            let quant: Int = Int(self.itemsQReceived[index])!
            self.sumP += elem * quant
            
            
        }
        
        let sumpL:String = "Total Amount: " + String(self.sumP) + "LL"
        self.totaAmount.text = sumpL

        
        self.tableView.reloadData()
    }
    
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return itemsReceived.count
        
    }


    @IBAction func confirmAction(sender: AnyObject) {
        if(self.itemsReceived.isEmpty){
            
            let alert = UIAlertController(title: "Wait!", message: "Cart Cannot Be Empty!", preferredStyle: .Alert)
            let ok = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                print("Ok Button Pressed")
            })
            alert.addAction(ok)
            presentViewController(alert, animated: true, completion: nil)
            
            
            
      

            
            
        }else{
        NSUserDefaults.standardUserDefaults().setObject(self.itemsReceived, forKey: "FinalItems")
        NSUserDefaults.standardUserDefaults().setObject(self.itemsQReceived, forKey: "FinalQ")
        NSUserDefaults.standardUserDefaults().setObject(self.itemsPrices, forKey: "FinalP")
        NSUserDefaults.standardUserDefaults().setObject(self.sumP, forKey: "FinalS")
        NSUserDefaults.standardUserDefaults().setObject(self.restoName, forKey: "restoName")
        self.performSegueWithIdentifier("finalConfirm", sender: self)
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ConfirmationCell", forIndexPath: indexPath) as! ConfirmationTableViewCell
        
        let itemDisplayed: String = restoName + "->" + itemsReceived[indexPath.row]
        cell.itemsLabel.text = itemDisplayed
        
        var PriceS: String = String(itemsPrices[indexPath.row])
        PriceS = PriceS + "LL"
        cell.priceLabel.text = PriceS
        
        let quatity: String = "Quantity: " + itemsQReceived[indexPath.row]
        cell.quantityLabel.text = quatity
        
        let quantityN: Int = Int(itemsQReceived[indexPath.row])!
        
        var total: String = "Total: "
        total  = total + String(quantityN*itemsPrices[indexPath.row]) + "LL"
        cell.totalLabel.text = total
        // Configure the cell...
        
        return cell
    }
    

}
