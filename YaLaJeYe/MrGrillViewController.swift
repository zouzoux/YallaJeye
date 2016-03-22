//
//  MrGrillViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 1/28/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class MrGrillViewController: UIViewController,UITextFieldDelegate {

    var sectionTitleArray : NSMutableArray = NSMutableArray()
    var sectionContentDict : NSMutableDictionary = NSMutableDictionary()
    var arrayForBool : NSMutableArray = NSMutableArray()
    var isChecked: Bool = false
    var arrowImage: UIImageView = UIImageView()
    var textfieldContents: [String] = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
    var reset: Bool = false
    var checkStatus = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
    
    let allItems: Array<String> = ["Tabouleh","Fattouch","Mawsam Salad","Zaatar / Bakli / Rocca", "Chmandar", "khodra+ kabiss+ zaytoun","Jat khodra Mouchakal", "Avocado Salad","Al Raheb Salad","Hommos","Hommos Beiruty","Hommos Mr Grill","Mtabal","Labaneh","Labaneh Bil Toum","Labaneh maez","Labaneh maez extra","Shanklish","Tajen Samak","Basterma Arayes","Warak Enab","Ardi Chawki","Hendbeh","Batrakh","Batata Mr Grill","Batata Mishwieh","Mkassarat","Mkassarat Extra","Hommos Snawbar","Loubieh Bi zeit","Msakaa Batenjane","Halloum Fried/ Grilled","Batata Meklieh","Batata Harra","Falafel","Hommos + Awarma","Hommos + Lahmeh + Snawbar","Balila","Foul","Beyd Awarma","Makanek","Soujouk","Beyd Ghanam","Sawda Djej","Dafadeh","Batenjane Mekleh","Kousa Mekleh","Karnabeet Mekleh","Sahn Makaleh Mchakal","Kebbeh Halabieh","Samboussik Lahmeh","(Rakakat Jebneh (Fried or Grilled","Mouajanat Mouchakal","Kebbeh Areh","Habrah Nayeh","Kebbeh Nayeh (Regular or Hot)","Kafta Nayeh","Sawda","Nayeh Mouchakal","Kebbeh Orfali","Kabab Mr. Grill (Hot)","Kafta","Kabab Halabi","kabab Orfali (Regular/Hot)","kabab Bazinjan","Kabab Khachkhach","Kabab Istambouli","Kebbeh on the Grill","Lahm Meshwe (Lamb)","Lahm Meshwe (Veal)","Lamb Chops","Makanek","Soujouk","Farrouj Msahhab","Taouk","Wings","Arayes Kafta","Mashawi Mchakal","Mashawi Mchakal kilo","Lahm Meshwe (Lamb) kilo","Lahm Meshwe (Veal) kilo","Kabab kilo","Taouk kilo","Grilled Hammour Fillet","Jumbo Prawns","Jumbo Prawns 1KG","Assafir dozen","Zaatar balady","Zaatar balady Extra","Labaneh with zaatar","Halloum","Kashkawan cheese","Kashkawan with zaatar","Lahm baajin with or without spices","Tray Mr. Grill","Kafta","Kabab Halabi","Kabab Istambouli","Kabab Orfali","kabab Khachkhach","kabab Bazinjan","Kebbeh on The Grill","Lahm Meshwe (Lamb)","Lahm Meshwe (Veal)","Makanek","Soujouk","Batata","Falafel","Labaneh","Cocktail","Cocktail juice","Avocado","Kiwi","Mango","Pineapple","Strawberry","Orange","Lemonade","Mint Lemonade","Ice Cream Cup","Mouhalabieh","Oriental Sweets","Banana Milkshake","Chocolate Banana Milkshake","Strawberry Milkshake","Turbo","Olympic","Tahiti","Fruit salad","Exotic plates","Red Bull","Mineral Water (Small)","Mineral Water (Large)","Soft Drinks","Perrier","laziza","Local Beer","Almaza light","Kebbe b sayniye","mloukhiye","Friki","Kusa fawarigh Kraain Warak 3enab","Siyadiyet samak loukouz ramli"]
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    let allSections: Array<String> = ["Crepes","Waffle","Pancake","Chocolate rich","Baked goods","Ice cream","Chocolate shot","Chocolate","Dip n Dip Gifts","Fried yummies","Stuff in a cup ","Dip Sticks","Dip n dip mania","Chocolates","Milk shake", "Frappe", "Smoothies", "Ice tea shakes", "Soft drinks"]
    
    let allPrices: Array<Int> = [8000,8000,7500,8000,7000,7500,15000,10000,7500,6500,7000,7000,6500,6500,6500,8000,9000,6500,8500,8500,7500,6500,7000,29000,6500,6000,4000,6000,7000,9500,5500,10000,6000,8500,9000,9000,10000,6500,6000,9000,10000,10500,15000,10000,16000,5500,4500,4500,5500,8500,8000,8000,9500,7500,15000,15000,15000,16000,35000,16000,15000,15000,15000,15000,16000,15000,15000,15000,19000,17000,19000,10000,10000,21000,16000,10000,13000,20000,67000,69000,62000,62000,60000,18000,34000,84000,45000,3000,3500,4500,6000,6500,6500,6000,30000,6500,6500,6500,6500,6500,6500,6500,8000,7000,6000,6000,4000,4000,4000,11000,8500,8000,7500,6500,7500,5000,6000,4500,5000,9000,5000,6000,6000,6000,6000,9500,11500,9500,9000,15000,6000,1500,2500,3000,5000,5000,6500,7000,20000,20000,20000,28000,30000]
    
    override func viewDidLoad() {
        super.viewDidLoad()

         arrayForBool = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"]
        
        
         sectionTitleArray = ["Salads","Cold Mezza","Hot Mezza","Mouajanat","Raw Meat","Al Mashawi","MANAKISH MAFTOUHA AW ARAYES","Tray Mr. Grill","Sandwiches","Cocktails & Juices","Ice Cream","Desserts","Milk Shakes","Special cocktail","Drinks","DAILY PLAT"]
        
        
        let tmp1 : NSArray = ["Tabouleh","Fattouch","Mawsam Salad","Zaatar / Bakli / Rocca", "Chmandar", "khodra+ kabiss+ zaytoun","Jat khodra Mouchakal", "Avocado Salad","Al Raheb Salad"]
        
        let tmp1d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        
        
        
        let tmp2 : NSArray = ["Hommos","Hommos Beiruty","Hommos Mr Grill","Mtabal","Labaneh","Labaneh Bil Toum","Labaneh maez","Labaneh maez extra","Shanklish","Tajen Samak","Basterma Arayes","Warak Enab","Ardi Chawki","Hendbeh","Batrakh","Batata Mr Grill","Batata Mishwieh","Mkassarat","Mkassarat Extra","Hommos Snawbar","Loubieh Bi zeit","Msakaa Batenjane"]
        
        let tmp2d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        
        
        let tmp3: NSArray = ["Halloum Fried/ Grilled","Batata Meklieh","Batata Harra","Falafel","Hommos + Awarma","Hommos + Lahmeh + Snawbar","Balila","Foul","Beyd Awarma","Makanek","Soujouk","Beyd Ghanam","Sawda Djej","Dafadeh","Batenjane Mekleh","Kousa Mekleh","Karnabeet Mekleh","Sahn Makaleh Mchakal"]
        
        let tmp3d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        let tmp4: NSArray = ["Kebbeh Halabieh","Samboussik Lahmeh","(Rakakat Jebneh (Fried or Grilled","Mouajanat Mouchakal","Kebbeh Areh"]
        
        let tmp4d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        let tmp5: NSArray = ["Habrah Nayeh","Kebbeh Nayeh (Regular or Hot)","Kafta Nayeh","Sawda","Nayeh Mouchakal","Kebbeh Orfali"]
        
        let tmp5d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        let tmp6: NSArray = ["Kabab Mr. Grill (Hot)","Kafta","Kabab Halabi","kabab Orfali (Regular/Hot)","kabab Bazinjan","Kabab Khachkhach","Kabab Istambouli","Kebbeh on the Grill","Lahm Meshwe (Lamb)","Lahm Meshwe (Veal)","Lamb Chops","Makanek","Soujouk","Farrouj Msahhab","Taouk","Wings","Arayes Kafta","Mashawi Mchakal","Mashawi Mchakal kilo","Lahm Meshwe (Lamb) kilo","Lahm Meshwe (Veal) kilo","Kabab kilo","Taouk kilo","Grilled Hammour Fillet","Jumbo Prawns","Jumbo Prawns 1KG","Assafir dozen"]
        
        
        let tmp6d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp7: NSArray = ["Zaatar balady","Zaatar balady Extra","Labaneh with zaatar","Halloum","Kashkawan cheese","Kashkawan with zaatar","Lahm baajin with or without spices"]
        
        let tmp7d: NSArray = ["","","","","","","","","","","","","","","","","","","","","",""]
        
        
        let tmp8: NSArray = ["Tray Mr. Grill"]
        
        let tmp8d: NSArray = ["(fried fish, lettuce, corn, chips, tartar dressing)","","","","","","","","","",""]
        
        let tmp9: NSArray = ["Kafta","Kabab Halabi","Kabab Istambouli","Kabab Orfali","kabab Khachkhach","kabab Bazinjan","Kebbeh on The Grill","Lahm Meshwe (Lamb)","Lahm Meshwe (Veal)","Makanek","Soujouk","Batata","Falafel","Labaneh"]
        
        let tmp9d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp10: NSArray = ["Cocktail","Cocktail juice","Avocado","Kiwi","Mango","Pineapple","Strawberry","Orange","Lemonade","Mint Lemonade"]
        
        let tmp10d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp11: NSArray = ["Ice Cream Cup"]
        
        let tmp11d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        let tmp12: NSArray = ["Mouhalabieh","Oriental Sweets"]
        let tmp12d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp13: NSArray = ["Banana Milkshake","Chocolate Banana Milkshake","Strawberry Milkshake"]
        
        let tmp13d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        let tmp14: NSArray = ["Turbo","Olympic","Tahiti","Fruit salad","Exotic plates"]
        
        let tmp14d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp15: NSArray = ["Red Bull","Mineral Water (Small)","Mineral Water (Large)","Soft Drinks","Perrier","laziza","Local Beer","Almaza light"]
        
        
        let tmp15d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp16: NSArray = ["Kebbe b sayniye","mloukhiye","Friki","Kusa fawarigh Kraain Warak 3enab","Siyadiyet samak loukouz ramli"]
        
        let tmp16d: NSArray = ["Tuesday","Tuesday","Wednesday","Thursday","Friday"]
        
        var totalC = 0
        var totalP = 0
        
        let tmp1Prices: NSArray = [8000,8000,7500,8000,7000,7500,15000,10000,7500]
        
        print(tmp1.count)
        print(tmp1Prices.count)
        totalC += tmp1.count
        totalP += tmp1Prices.count
        
        //9
        
        
        let tmp2Prices: NSArray = [6500,7000,7000,6500,6500,6500,8000,9000,6500,8500,8500,7500,6500,7000,29000,6500,6000,4000,6000,7000,9500,5500]
        
        print(tmp2.count)
        print(tmp2Prices.count)
        totalC += tmp2.count
        totalP += tmp2Prices.count
        
        // 31
        
        
        let tmp3Prices: NSArray = [10000,6000,8500,9000,9000,10000,6500,6000,9000,10000,10500,15000,10000,16000,5500,4500,4500,5500]
        
        print(tmp3.count)
        print(tmp3Prices.count)
        totalC += tmp3.count
        totalP += tmp3Prices.count
        
        //49
        
        let tmp4Prices: NSArray = [8500,8000,8000,9500,7500]
        
        print(tmp4.count)
        print(tmp4Prices.count)
        totalC += tmp4.count
        totalP += tmp4Prices.count
        
        //54
        
        
        let tmp5Prices: NSArray = [15000,15000,15000,16000,35000,16000]
        
        print(tmp5.count)
        print(tmp5Prices.count)
        totalC += tmp5.count
        totalP += tmp5Prices.count
        
        //60
        
        let tmp6Prices: NSArray = [15000,15000,15000,15000,16000,15000,15000,15000,19000,17000,19000,10000,10000,21000,16000,10000,13000,20000,67000,69000,62000,62000,60000,18000,34000,84000,45000]
        
        print(tmp6.count)
        print(tmp6Prices.count)
        totalC += tmp6.count
        totalP += tmp6Prices.count
        
        //87
        
        
        let tmp7Prices: NSArray = [3000,3500,4500,6000,6500,6500,6000]
        
        print(tmp7.count)
        print(tmp7Prices.count)
        totalC += tmp7.count
        totalP += tmp7Prices.count
        
        //94
        
        let tmp8Prices: NSArray = [30000]
        
        print(tmp8.count)
        print(tmp8Prices.count)
        totalC += tmp8.count
        totalP += tmp8Prices.count
        
        //95
        
        let tmp9Prices: NSArray = [6500,6500,6500,6500,6500,6500,6500,8000,7000,6000,6000,4000,4000,4000]
        
        
        print(tmp9.count)
        print(tmp9Prices.count)
        totalC += tmp9.count
        totalP += tmp9Prices.count
        
        //109
        
        let tmp10Prices: NSArray = [11000,8500,8000,7500,6500,7500,5000,6000,4500,5000]
        
        print(tmp10.count)
        print(tmp10Prices.count)
        totalC += tmp10.count
        totalP += tmp10Prices.count
        
        //119
        
        
        let tmp11Prices: NSArray = [9000]
        
        print(tmp11.count)
        print(tmp11Prices.count)
        totalC += tmp11.count
        totalP += tmp11Prices.count
        
        //120
        
        let tmp12Prices: NSArray = [5000,6000]
        
        print(tmp12.count)
        print(tmp12Prices.count)
        totalC += tmp12.count
        totalP += tmp12Prices.count
        
        //122
        
        let tmp13Prices: NSArray = [6000,6000,6000]
        
        print(tmp13.count)
        print(tmp13Prices.count)
        totalC += tmp13.count
        totalP += tmp13Prices.count
        
        //125
        
        let tmp14Prices: NSArray = [9500,11500,9500,9000,15000]
        
        print(tmp14.count)
        print(tmp14Prices.count)
        totalC += tmp14.count
        totalP += tmp14Prices.count
        
        //130
        
        let tmp15Prices: NSArray = [6000,1500,2500,3000,5000,5000,6500,7000]
        
        print(tmp15.count)
        print(tmp15Prices.count)
        totalC += tmp15.count
        totalP += tmp15Prices.count
        
        
        
        // 138
        
        let tmp16Prices: NSArray = [20000,20000,20000,28000,30000]
        
        print(tmp16.count)
        print(tmp16Prices.count)
        totalC += tmp16.count
        totalP += tmp16Prices.count

        print(allItems.count)
        print(allPrices.count)

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
        
        tableView.allowsSelection = false
        
        textfieldContents = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]

        
        
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
        NSUserDefaults.standardUserDefaults().setObject("Mr Grill", forKey: "restoName")
        
        
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
        if indexPath.section == 1 && indexPath.row == 0 {
            cell.quanTextField.tag = 9
            cell.quanTextField.text = textfieldContents[9]
            cell.checkBox.tag = 9
            cell.checkBox.selected = checkStatus[9]
            
        }
        if indexPath.section == 1 && indexPath.row == 1 {
            cell.quanTextField.tag = 10
            cell.quanTextField.text = textfieldContents[10]
            cell.checkBox.tag = 10
            cell.checkBox.selected = checkStatus[10]
            
        }
        if indexPath.section == 1 && indexPath.row == 2{
            cell.quanTextField.tag = 11
            cell.quanTextField.text = textfieldContents[11]
            cell.checkBox.tag = 11
            cell.checkBox.selected = checkStatus[11]
            
        }
        if indexPath.section == 1 && indexPath.row == 3{
            cell.quanTextField.tag = 12
            cell.quanTextField.text = textfieldContents[12]
            cell.checkBox.tag = 12
            cell.checkBox.selected = checkStatus[12]
            
        }
        if indexPath.section == 1 && indexPath.row == 4{
            cell.quanTextField.tag = 13
            cell.quanTextField.text = textfieldContents[13]
            cell.checkBox.tag = 13
            cell.checkBox.selected = checkStatus[13]
            
        }
        if indexPath.section == 1 && indexPath.row == 5{
            cell.quanTextField.tag = 14
            cell.quanTextField.text = textfieldContents[14]
            cell.checkBox.tag = 14
            cell.checkBox.selected = checkStatus[14]
            
        }
        if indexPath.section == 1 && indexPath.row == 6{
            cell.quanTextField.tag = 15
            cell.quanTextField.text = textfieldContents[15]
            cell.checkBox.tag = 15
            cell.checkBox.selected = checkStatus[15]
            
        }
        if indexPath.section == 1 && indexPath.row == 7{
            cell.quanTextField.tag = 16
            cell.quanTextField.text = textfieldContents[16]
            cell.checkBox.tag = 16
            cell.checkBox.selected = checkStatus[16]
            
        }
        if indexPath.section == 1 && indexPath.row == 8{
            cell.quanTextField.tag = 17
            cell.quanTextField.text = textfieldContents[17]
            cell.checkBox.tag = 17
            cell.checkBox.selected = checkStatus[17]
            
        }
        if indexPath.section == 1 && indexPath.row == 9{
            cell.quanTextField.tag = 18
            cell.quanTextField.text = textfieldContents[18]
            cell.checkBox.tag = 18
            cell.checkBox.selected = checkStatus[18]
            
        }
        if indexPath.section == 1 && indexPath.row == 10{
            cell.quanTextField.tag = 19
            cell.quanTextField.text = textfieldContents[19]
            cell.checkBox.tag = 19
            cell.checkBox.selected = checkStatus[19]
            
        }
        if indexPath.section == 1 && indexPath.row == 11{
            cell.quanTextField.tag = 20
            cell.quanTextField.text = textfieldContents[20]
            cell.checkBox.tag = 20
            cell.checkBox.selected = checkStatus[20]
            
        }
        if indexPath.section == 1 && indexPath.row == 12{
            cell.quanTextField.tag = 21
            cell.quanTextField.text = textfieldContents[21]
            cell.checkBox.tag = 21
            cell.checkBox.selected = checkStatus[21]
            
        }
        if indexPath.section == 1 && indexPath.row == 13{
            cell.quanTextField.tag = 22
            cell.quanTextField.text = textfieldContents[22]
            cell.checkBox.tag = 22
            cell.checkBox.selected = checkStatus[22]
            
        }
        if indexPath.section == 1 && indexPath.row == 14{
            cell.quanTextField.tag = 23
            cell.quanTextField.text = textfieldContents[23]
            cell.checkBox.tag = 23
            cell.checkBox.selected = checkStatus[23]
            
        }
        if indexPath.section == 1 && indexPath.row == 15{
            cell.quanTextField.tag = 24
            cell.quanTextField.text = textfieldContents[24]
            cell.checkBox.tag = 24
            cell.checkBox.selected = checkStatus[24]
            
        }
        if indexPath.section == 1 && indexPath.row == 16{
            cell.quanTextField.tag = 25
            cell.quanTextField.text = textfieldContents[25]
            cell.checkBox.tag = 25
            cell.checkBox.selected = checkStatus[25]
            
        }
        if indexPath.section == 1 && indexPath.row == 17{
            cell.quanTextField.tag = 26
            cell.quanTextField.text = textfieldContents[26]
            cell.checkBox.tag = 26
            cell.checkBox.selected = checkStatus[26]
            
        }
        if indexPath.section == 1 && indexPath.row == 18{
            cell.quanTextField.tag = 27
            cell.quanTextField.text = textfieldContents[27]
            cell.checkBox.tag = 27
            cell.checkBox.selected = checkStatus[27]
            
        }
        if indexPath.section == 1 && indexPath.row == 19{
            cell.quanTextField.tag = 28
            cell.quanTextField.text = textfieldContents[28]
            cell.checkBox.tag = 28
            cell.checkBox.selected = checkStatus[28]
            
        }
        if indexPath.section == 1 && indexPath.row == 20{
            cell.quanTextField.tag = 29
            cell.quanTextField.text = textfieldContents[29]
            cell.checkBox.tag = 29
            cell.checkBox.selected = checkStatus[29]
            
        }
        if indexPath.section == 1 && indexPath.row == 21{
            cell.quanTextField.tag = 30
            cell.quanTextField.text = textfieldContents[30]
            cell.checkBox.tag = 30
            cell.checkBox.selected = checkStatus[30]
            
        }
        if indexPath.section == 2 && indexPath.row == 0{
            cell.quanTextField.tag = 31
            cell.quanTextField.text = textfieldContents[31]
            cell.checkBox.tag = 31
            cell.checkBox.selected = checkStatus[31]
            
        }
        if indexPath.section == 2 && indexPath.row == 1{
            cell.quanTextField.tag = 32
            cell.quanTextField.text = textfieldContents[32]
            cell.checkBox.tag = 32
            cell.checkBox.selected = checkStatus[32]
            
        }
        if indexPath.section == 2 && indexPath.row == 2{
            cell.quanTextField.tag = 33
            cell.quanTextField.text = textfieldContents[33]
            cell.checkBox.tag = 33
            cell.checkBox.selected = checkStatus[33]
            
        }
        if indexPath.section == 2 && indexPath.row == 3{
            cell.quanTextField.tag = 34
            cell.quanTextField.text = textfieldContents[34]
            cell.checkBox.tag = 34
            cell.checkBox.selected = checkStatus[34]
            
        }
        if indexPath.section == 2 && indexPath.row == 4{
            cell.quanTextField.tag = 35
            cell.quanTextField.text = textfieldContents[35]
            cell.checkBox.tag = 35
            cell.checkBox.selected = checkStatus[35]
            
        }
        if indexPath.section == 2 && indexPath.row == 5{
            cell.quanTextField.tag = 36
            cell.quanTextField.text = textfieldContents[36]
            cell.checkBox.tag = 36
            cell.checkBox.selected = checkStatus[36]
            
        }
        if indexPath.section == 2 && indexPath.row == 6{
            cell.quanTextField.tag = 37
            cell.quanTextField.text = textfieldContents[37]
            cell.checkBox.tag = 37
            cell.checkBox.selected = checkStatus[37]
            
        }
        if indexPath.section == 2 && indexPath.row == 7{
            cell.quanTextField.tag = 38
            cell.quanTextField.text = textfieldContents[38]
            cell.checkBox.tag = 38
            cell.checkBox.selected = checkStatus[38]
            
        }
        if indexPath.section == 2 && indexPath.row == 8{
            cell.quanTextField.tag = 39
            cell.quanTextField.text = textfieldContents[39]
            cell.checkBox.tag = 39
            cell.checkBox.selected = checkStatus[39]
            
        }
        if indexPath.section == 2 && indexPath.row == 9{
            cell.quanTextField.tag = 40
            cell.quanTextField.text = textfieldContents[40]
            cell.checkBox.tag = 40
            cell.checkBox.selected = checkStatus[40]
            
        }
        if indexPath.section == 2 && indexPath.row == 10{
            cell.quanTextField.tag = 41
            cell.quanTextField.text = textfieldContents[41]
            cell.checkBox.tag = 41
            cell.checkBox.selected = checkStatus[41]
            
        }
        if indexPath.section == 2 && indexPath.row == 11{
            cell.quanTextField.tag = 42
            cell.quanTextField.text = textfieldContents[42]
            cell.checkBox.tag = 42
            cell.checkBox.selected = checkStatus[42]
            
        }
        if indexPath.section == 2 && indexPath.row == 12{
            cell.quanTextField.tag = 43
            cell.quanTextField.text = textfieldContents[43]
            cell.checkBox.tag = 43
            cell.checkBox.selected = checkStatus[43]
            
        }
        if indexPath.section == 2 && indexPath.row == 13{
            cell.quanTextField.tag = 44
            cell.quanTextField.text = textfieldContents[44]
            cell.checkBox.tag = 44
            cell.checkBox.selected = checkStatus[44]
            
        }
        if indexPath.section == 2 && indexPath.row == 14{
            cell.quanTextField.tag = 45
            cell.quanTextField.text = textfieldContents[45]
            cell.checkBox.tag = 45
            cell.checkBox.selected = checkStatus[45]
            
        }
        if indexPath.section == 2 && indexPath.row == 15{
            cell.quanTextField.tag = 46
            cell.quanTextField.text = textfieldContents[46]
            cell.checkBox.tag = 46
            cell.checkBox.selected = checkStatus[46]
            
        }
        if indexPath.section == 2 && indexPath.row == 16{
            cell.quanTextField.tag = 47
            cell.quanTextField.text = textfieldContents[47]
            cell.checkBox.tag = 47
            cell.checkBox.selected = checkStatus[47]
            
        }
        if indexPath.section == 2 && indexPath.row == 17{
            cell.quanTextField.tag = 48
            cell.quanTextField.text = textfieldContents[48]
            cell.checkBox.tag = 48
            cell.checkBox.selected = checkStatus[48]
            
        }
        if indexPath.section == 3 && indexPath.row == 0{
            cell.quanTextField.tag = 49
            cell.quanTextField.text = textfieldContents[49]
            cell.checkBox.tag = 49
            cell.checkBox.selected = checkStatus[49]
            
        }
        if indexPath.section == 3 && indexPath.row == 1{
            cell.quanTextField.tag = 50
            cell.quanTextField.text = textfieldContents[50]
            cell.checkBox.tag = 50
            cell.checkBox.selected = checkStatus[50]
            
        }
        if indexPath.section == 3 && indexPath.row == 2{
            cell.quanTextField.tag = 51
            cell.quanTextField.text = textfieldContents[51]
            cell.checkBox.tag = 51
            cell.checkBox.selected = checkStatus[51]
            
        }
        if indexPath.section == 3 && indexPath.row == 3{
            cell.quanTextField.tag = 52
            cell.quanTextField.text = textfieldContents[52]
            cell.checkBox.tag = 52
            cell.checkBox.selected = checkStatus[52]
            
        }
        if indexPath.section == 3 && indexPath.row == 4{
            cell.quanTextField.tag = 53
            cell.quanTextField.text = textfieldContents[53]
            cell.checkBox.tag = 53
            cell.checkBox.selected = checkStatus[53]
            
        }
        
        if indexPath.section == 4 && indexPath.row == 0{
            cell.quanTextField.tag = 54
            cell.quanTextField.text = textfieldContents[54]
            cell.checkBox.tag = 54
            cell.checkBox.selected = checkStatus[54]
            
        }
        if indexPath.section == 4 && indexPath.row == 1{
            cell.quanTextField.tag = 55
            cell.quanTextField.text = textfieldContents[55]
            cell.checkBox.tag = 55
            cell.checkBox.selected = checkStatus[55]
            
        }
        if indexPath.section == 4 && indexPath.row == 2{
            cell.quanTextField.tag = 56
            cell.quanTextField.text = textfieldContents[56]
            cell.checkBox.tag = 56
            cell.checkBox.selected = checkStatus[56]
            
        }
        if indexPath.section == 4 && indexPath.row == 3{
            cell.quanTextField.tag = 57
            cell.quanTextField.text = textfieldContents[57]
            cell.checkBox.tag = 57
            cell.checkBox.selected = checkStatus[57]
            
        }
        if indexPath.section == 4 && indexPath.row == 4{
            cell.quanTextField.tag = 58
            cell.quanTextField.text = textfieldContents[58]
            cell.checkBox.tag = 58
            cell.checkBox.selected = checkStatus[58]
            
        }
        if indexPath.section == 4 && indexPath.row == 5{
            cell.quanTextField.tag = 59
            cell.quanTextField.text = textfieldContents[59]
            cell.checkBox.tag = 59
            cell.checkBox.selected = checkStatus[59]
            
        }
        if indexPath.section == 5 && indexPath.row == 0{
            cell.quanTextField.tag = 60
            cell.quanTextField.text = textfieldContents[60]
            cell.checkBox.tag = 60
            cell.checkBox.selected = checkStatus[60]
            
        }
        if indexPath.section == 5 && indexPath.row == 1{
            cell.quanTextField.tag = 61
            cell.quanTextField.text = textfieldContents[61]
            cell.checkBox.tag = 61
            cell.checkBox.selected = checkStatus[61]
            
        }
        if indexPath.section == 5 && indexPath.row == 2{
            cell.quanTextField.tag = 62
            cell.quanTextField.text = textfieldContents[62]
            cell.checkBox.tag = 62
            cell.checkBox.selected = checkStatus[62]
            
        }
        if indexPath.section == 5 && indexPath.row == 3{
            cell.quanTextField.tag = 63
            cell.quanTextField.text = textfieldContents[63]
            cell.checkBox.tag = 63
            cell.checkBox.selected = checkStatus[63]
            
        }
        if indexPath.section == 5 && indexPath.row == 4{
            cell.quanTextField.tag = 64
            cell.quanTextField.text = textfieldContents[64]
            cell.checkBox.tag = 64
            cell.checkBox.selected = checkStatus[64]
            
        }
        if indexPath.section == 5 && indexPath.row == 5{
            cell.quanTextField.tag = 65
            cell.quanTextField.text = textfieldContents[65]
            cell.checkBox.tag = 65
            cell.checkBox.selected = checkStatus[65]
            
        }
        if indexPath.section == 5 && indexPath.row == 6{
            cell.quanTextField.tag = 66
            cell.quanTextField.text = textfieldContents[66]
            cell.checkBox.tag = 66
            cell.checkBox.selected = checkStatus[66]
            
        }
        if indexPath.section == 5 && indexPath.row == 7{
            cell.quanTextField.tag = 67
            cell.quanTextField.text = textfieldContents[67]
            cell.checkBox.tag = 67
            cell.checkBox.selected = checkStatus[67]
            
        }
        if indexPath.section == 5 && indexPath.row == 8{
            cell.quanTextField.tag = 68
            cell.quanTextField.text = textfieldContents[68]
            cell.checkBox.tag = 68
            cell.checkBox.selected = checkStatus[68]
            
        }
        if indexPath.section == 5 && indexPath.row == 9{
            cell.quanTextField.tag = 69
            cell.quanTextField.text = textfieldContents[69]
            cell.checkBox.tag = 69
            cell.checkBox.selected = checkStatus[69]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 10{
            cell.quanTextField.tag = 70
            cell.quanTextField.text = textfieldContents[70]
            cell.checkBox.tag = 70
            cell.checkBox.selected = checkStatus[70]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 11{
            cell.quanTextField.tag = 71
            cell.quanTextField.text = textfieldContents[71]
            cell.checkBox.tag = 71
            cell.checkBox.selected = checkStatus[71]
            
        }
        
        
        if indexPath.section == 5 && indexPath.row == 12{
            cell.quanTextField.tag = 72
            cell.quanTextField.text = textfieldContents[72]
            cell.checkBox.tag = 72
            cell.checkBox.selected = checkStatus[72]
            
        }
        
        
        if indexPath.section == 5 && indexPath.row == 13{
            cell.quanTextField.tag = 73
            cell.quanTextField.text = textfieldContents[73]
            cell.checkBox.tag = 73
            cell.checkBox.selected = checkStatus[73]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 14{
            cell.quanTextField.tag = 74
            cell.quanTextField.text = textfieldContents[74]
            cell.checkBox.tag = 74
            cell.checkBox.selected = checkStatus[74]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 15{
            cell.quanTextField.tag = 75
            cell.quanTextField.text = textfieldContents[75]
            cell.checkBox.tag = 75
            cell.checkBox.selected = checkStatus[75]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 16{
            cell.quanTextField.tag = 76
            cell.quanTextField.text = textfieldContents[76]
            cell.checkBox.tag = 76
            cell.checkBox.selected = checkStatus[76]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 17{
            cell.quanTextField.tag = 77
            cell.quanTextField.text = textfieldContents[77]
            cell.checkBox.tag = 77
            cell.checkBox.selected = checkStatus[77]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 18{
            cell.quanTextField.tag = 78
            cell.quanTextField.text = textfieldContents[78]
            cell.checkBox.tag = 78
            cell.checkBox.selected = checkStatus[78]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 19{
            cell.quanTextField.tag = 79
            cell.quanTextField.text = textfieldContents[79]
            cell.checkBox.tag = 79
            cell.checkBox.selected = checkStatus[79]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 20{
            cell.quanTextField.tag = 80
            cell.quanTextField.text = textfieldContents[80]
            cell.checkBox.tag = 80
            cell.checkBox.selected = checkStatus[80]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 21{
            cell.quanTextField.tag = 81
            cell.quanTextField.text = textfieldContents[81]
            cell.checkBox.tag = 81
            cell.checkBox.selected = checkStatus[81]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 22{
            cell.quanTextField.tag = 82
            cell.quanTextField.text = textfieldContents[82]
            cell.checkBox.tag = 82
            cell.checkBox.selected = checkStatus[82]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 23{
            cell.quanTextField.tag = 83
            cell.quanTextField.text = textfieldContents[83]
            cell.checkBox.tag = 83
            cell.checkBox.selected = checkStatus[83]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 24{
            cell.quanTextField.tag = 84
            cell.quanTextField.text = textfieldContents[84]
            cell.checkBox.tag = 84
            cell.checkBox.selected = checkStatus[84]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 25{
            cell.quanTextField.tag = 85
            cell.quanTextField.text = textfieldContents[85]
            cell.checkBox.tag = 85
            cell.checkBox.selected = checkStatus[85]
            
        }
        
        if indexPath.section == 5 && indexPath.row == 26{
            cell.quanTextField.tag = 86
            cell.quanTextField.text = textfieldContents[86]
            cell.checkBox.tag = 86
            cell.checkBox.selected = checkStatus[86]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 0{
            cell.quanTextField.tag = 87
            cell.quanTextField.text = textfieldContents[87]
            cell.checkBox.tag = 87
            cell.checkBox.selected = checkStatus[87]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 1{
            cell.quanTextField.tag = 88
            cell.quanTextField.text = textfieldContents[88]
            cell.checkBox.tag = 88
            cell.checkBox.selected = checkStatus[88]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 2{
            cell.quanTextField.tag = 89
            cell.quanTextField.text = textfieldContents[89]
            cell.checkBox.tag = 89
            cell.checkBox.selected = checkStatus[89]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 3{
            cell.quanTextField.tag = 90
            cell.quanTextField.text = textfieldContents[90]
            cell.checkBox.tag = 90
            cell.checkBox.selected = checkStatus[90]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 4{
            cell.quanTextField.tag = 91
            cell.quanTextField.text = textfieldContents[91]
            cell.checkBox.tag = 91
            cell.checkBox.selected = checkStatus[91]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 5{
            cell.quanTextField.tag = 92
            cell.quanTextField.text = textfieldContents[92]
            cell.checkBox.tag = 92
            cell.checkBox.selected = checkStatus[92]
            
        }
        
        if indexPath.section == 6 && indexPath.row == 6{
            cell.quanTextField.tag = 93
            cell.quanTextField.text = textfieldContents[93]
            cell.checkBox.tag = 93
            cell.checkBox.selected = checkStatus[93]
            
        }
        
        if indexPath.section == 7 && indexPath.row == 0{
            cell.quanTextField.tag = 94
            cell.quanTextField.text = textfieldContents[94]
            cell.checkBox.tag = 94
            cell.checkBox.selected = checkStatus[94]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 0{
            cell.quanTextField.tag = 95
            cell.quanTextField.text = textfieldContents[95]
            cell.checkBox.tag = 95
            cell.checkBox.selected = checkStatus[95]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 1{
            cell.quanTextField.tag = 96
            cell.quanTextField.text = textfieldContents[96]
            cell.checkBox.tag = 96
            cell.checkBox.selected = checkStatus[96]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 2{
            cell.quanTextField.tag = 97
            cell.quanTextField.text = textfieldContents[97]
            cell.checkBox.tag = 97
            cell.checkBox.selected = checkStatus[97]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 3{
            cell.quanTextField.tag = 98
            cell.quanTextField.text = textfieldContents[98]
            cell.checkBox.tag = 98
            cell.checkBox.selected = checkStatus[98]
            
        }
        
        
        if indexPath.section == 8 && indexPath.row == 4{
            cell.quanTextField.tag = 99
            cell.quanTextField.text = textfieldContents[99]
            cell.checkBox.tag = 99
            cell.checkBox.selected = checkStatus[99]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 5{
            cell.quanTextField.tag = 100
            cell.quanTextField.text = textfieldContents[100]
            cell.checkBox.tag = 100
            cell.checkBox.selected = checkStatus[100]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 6{
            cell.quanTextField.tag = 101
            cell.quanTextField.text = textfieldContents[101]
            cell.checkBox.tag = 101
            cell.checkBox.selected = checkStatus[101]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 7{
            cell.quanTextField.tag = 102
            cell.quanTextField.text = textfieldContents[102]
            cell.checkBox.tag = 102
            cell.checkBox.selected = checkStatus[102]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 8{
            cell.quanTextField.tag = 103
            cell.quanTextField.text = textfieldContents[103]
            cell.checkBox.tag = 103
            cell.checkBox.selected = checkStatus[103]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 9{
            cell.quanTextField.tag = 104
            cell.quanTextField.text = textfieldContents[104]
            cell.checkBox.tag = 104
            cell.checkBox.selected = checkStatus[104]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 10{
            cell.quanTextField.tag = 105
            cell.quanTextField.text = textfieldContents[105]
            cell.checkBox.tag = 105
            cell.checkBox.selected = checkStatus[105]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 11{
            cell.quanTextField.tag = 106
            cell.quanTextField.text = textfieldContents[106]
            cell.checkBox.tag = 106
            cell.checkBox.selected = checkStatus[106]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 12{
            cell.quanTextField.tag = 107
            cell.quanTextField.text = textfieldContents[107]
            cell.checkBox.tag = 107
            cell.checkBox.selected = checkStatus[107]
            
        }
        
        
        if indexPath.section == 8 && indexPath.row == 13{
            cell.quanTextField.tag = 108
            cell.quanTextField.text = textfieldContents[108]
            cell.checkBox.tag = 108
            cell.checkBox.selected = checkStatus[108]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 0{
            cell.quanTextField.tag = 109
            cell.quanTextField.text = textfieldContents[109]
            cell.checkBox.tag = 109
            cell.checkBox.selected = checkStatus[109]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 1{
            cell.quanTextField.tag = 110
            cell.quanTextField.text = textfieldContents[110]
            cell.checkBox.tag = 110
            cell.checkBox.selected = checkStatus[110]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 2{
            cell.quanTextField.tag = 111
            cell.quanTextField.text = textfieldContents[111]
            cell.checkBox.tag = 111
            cell.checkBox.selected = checkStatus[111]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 3{
            cell.quanTextField.tag = 112
            cell.quanTextField.text = textfieldContents[112]
            cell.checkBox.tag = 112
            cell.checkBox.selected = checkStatus[112]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 4{
            cell.quanTextField.tag = 113
            cell.quanTextField.text = textfieldContents[113]
            cell.checkBox.tag = 113
            cell.checkBox.selected = checkStatus[113]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 5{
            cell.quanTextField.tag = 114
            cell.quanTextField.text = textfieldContents[114]
            cell.checkBox.tag = 114
            cell.checkBox.selected = checkStatus[114]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 6{
            cell.quanTextField.tag = 115
            cell.quanTextField.text = textfieldContents[115]
            cell.checkBox.tag = 115
            cell.checkBox.selected = checkStatus[115]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 7{
            cell.quanTextField.tag = 116
            cell.quanTextField.text = textfieldContents[116]
            cell.checkBox.tag = 116
            cell.checkBox.selected = checkStatus[116]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 8{
            cell.quanTextField.tag = 117
            cell.quanTextField.text = textfieldContents[117]
            cell.checkBox.tag = 117
            cell.checkBox.selected = checkStatus[117]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 9{
            cell.quanTextField.tag = 118
            cell.quanTextField.text = textfieldContents[118]
            cell.checkBox.tag = 118
            cell.checkBox.selected = checkStatus[118]
            
        }
        
        if indexPath.section == 10 && indexPath.row == 0{
            cell.quanTextField.tag = 119
            cell.quanTextField.text = textfieldContents[119]
            cell.checkBox.tag = 119
            cell.checkBox.selected = checkStatus[119]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 0{
            cell.quanTextField.tag = 120
            cell.quanTextField.text = textfieldContents[120]
            cell.checkBox.tag = 120
            cell.checkBox.selected = checkStatus[120]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 1{
            cell.quanTextField.tag = 121
            cell.quanTextField.text = textfieldContents[121]
            cell.checkBox.tag = 121
            cell.checkBox.selected = checkStatus[121]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 0{
            cell.quanTextField.tag = 122
            cell.quanTextField.text = textfieldContents[122]
            cell.checkBox.tag = 122
            cell.checkBox.selected = checkStatus[122]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 1{
            cell.quanTextField.tag = 123
            cell.quanTextField.text = textfieldContents[123]
            cell.checkBox.tag = 123
            cell.checkBox.selected = checkStatus[123]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 2{
            cell.quanTextField.tag = 124
            cell.quanTextField.text = textfieldContents[124]
            cell.checkBox.tag = 124
            cell.checkBox.selected = checkStatus[124]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 0{
            cell.quanTextField.tag = 125
            cell.quanTextField.text = textfieldContents[125]
            cell.checkBox.tag = 125
            cell.checkBox.selected = checkStatus[125]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 1{
            cell.quanTextField.tag = 126
            cell.quanTextField.text = textfieldContents[126]
            cell.checkBox.tag = 126
            cell.checkBox.selected = checkStatus[126]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 2{
            cell.quanTextField.tag = 127
            cell.quanTextField.text = textfieldContents[127]
            cell.checkBox.tag = 127
            cell.checkBox.selected = checkStatus[127]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 3{
            cell.quanTextField.tag = 128
            cell.quanTextField.text = textfieldContents[128]
            cell.checkBox.tag = 128
            cell.checkBox.selected = checkStatus[128]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 4{
            cell.quanTextField.tag = 129
            cell.quanTextField.text = textfieldContents[129]
            cell.checkBox.tag = 129
            cell.checkBox.selected = checkStatus[129]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 0{
            cell.quanTextField.tag = 130
            cell.quanTextField.text = textfieldContents[130]
            cell.checkBox.tag = 130
            cell.checkBox.selected = checkStatus[130]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 1{
            cell.quanTextField.tag = 131
            cell.quanTextField.text = textfieldContents[131]
            cell.checkBox.tag = 131
            cell.checkBox.selected = checkStatus[131]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 2{
            cell.quanTextField.tag = 132
            cell.quanTextField.text = textfieldContents[132]
            cell.checkBox.tag = 132
            cell.checkBox.selected = checkStatus[132]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 3{
            cell.quanTextField.tag = 133
            cell.quanTextField.text = textfieldContents[133]
            cell.checkBox.tag = 133
            cell.checkBox.selected = checkStatus[133]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 4{
            cell.quanTextField.tag = 134
            cell.quanTextField.text = textfieldContents[134]
            cell.checkBox.tag = 134
            cell.checkBox.selected = checkStatus[134]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 5{
            cell.quanTextField.tag = 135
            cell.quanTextField.text = textfieldContents[135]
            cell.checkBox.tag = 135
            cell.checkBox.selected = checkStatus[135]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 6{
            cell.quanTextField.tag = 136
            cell.quanTextField.text = textfieldContents[136]
            cell.checkBox.tag = 136
            cell.checkBox.selected = checkStatus[136]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 7{
            cell.quanTextField.tag = 137
            cell.quanTextField.text = textfieldContents[137]
            cell.checkBox.tag = 137
            cell.checkBox.selected = checkStatus[137]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 0{
            cell.quanTextField.tag = 138
            cell.quanTextField.text = textfieldContents[138]
            cell.checkBox.tag = 138
            cell.checkBox.selected = checkStatus[138]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 1{
            cell.quanTextField.tag = 139
            cell.quanTextField.text = textfieldContents[139]
            cell.checkBox.tag = 139
            cell.checkBox.selected = checkStatus[139]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 2{
            cell.quanTextField.tag = 140
            cell.quanTextField.text = textfieldContents[140]
            cell.checkBox.tag = 140
            cell.checkBox.selected = checkStatus[140]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 3{
            cell.quanTextField.tag = 141
            cell.quanTextField.text = textfieldContents[141]
            cell.checkBox.tag = 141
            cell.checkBox.selected = checkStatus[141]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 4{
            cell.quanTextField.tag = 142
            cell.quanTextField.text = textfieldContents[142]
            cell.checkBox.tag = 142
            cell.checkBox.selected = checkStatus[142]
            
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