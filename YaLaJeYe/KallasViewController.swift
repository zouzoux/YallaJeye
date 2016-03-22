//
//  KallasViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 1/21/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class KallasViewController: UIViewController,UITextFieldDelegate {
    
    var arrowImage: UIImageView!
    var sectionTitleArray : NSMutableArray = NSMutableArray()
    var sectionContentDict : NSMutableDictionary = NSMutableDictionary()
    var arrayForBool : NSMutableArray = NSMutableArray()
    var isChecked: Bool = false
    var textfieldContents: [String] = ["","","","", "","","","","","","","","",""]
    var reset: Bool = false
    var checkStatus = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]
    
    let allItems: [String] = ["samak me2leh aw mechweh 2reydis batata hommos fattoush mashroubat ghaziyah","espresso","ahweh tirkiyeh","ahweh bayda","nescafe","shay mchakal","Miyah ma3daniyah kabira ","Miyah ma3daniyah saghira","Perrier","Machroubat ghaziyah","3assir tazaj","Laymounada","Machroubat taka","bira mahalliyeh","bira mexikiyyeh","bira moustawrada","bira doun kouhoul","narjile aajame","narjile speciale","narjile mouassal","3ara2 3ade annine","3ara2 3ade nossiyeh","3ara2 3ade reb3iyyeh","3ara2 3ade kess","3ara2 extra annine","3ara2 extra nossiyeh","3ara2 extra reb3iyyeh","3ara2 extra kess","whisky 3ade annine","whisky 3ade nossiyeh","whisky 3ade reb3iyyeh","whisky 3ade kess", "whisky extra annine","whisky extra nossiyeh","whisky extra reb3iyeh","whisky extra kess","vodka 3ade annine","vodka 3ade nossiyeh","vodka extra annine","vodka extra nossiyeh","vodka extra kess","nbid annine","nbid nossiyeh","hommos","hommos bel 2raydess","mtabbal batenjen","mtabbal batenjen extra","tajin","tajin samak","wara2 3enab","ardi chawke","khoudar mechwiyye aw maslou2a","mkhallalet mchakkale","batrakh","anchoi","hanklis","salmon","ghazal abou senn","farride","sultan","jarou antyass","taba2 asmek nayye","thon abyad aw ahmar","salmon fume","caviar","caviar ahmar aw aswad","lamhe mechwiyye","taouk","kabab mechwe","jwenih djej","cooky saint Jacque 6 pcs","safad 6 pcs","witer 6pcs","moule kbir","moule zghir","tabboule","fattouch","salade crab","salatit mawsam","salata charkiyyeh","cocktail","batata mechwiye me2liye aw chips","mou3ajjanat","calamar 6pcs","akhtabout","chich 2raydess","2raydess mechwe aw maslou2","sambidej","kebbe halabiye","r2a2at jebne","dafade3 6 pcs","r2a2at 2raydess","saumon panne","filet cocktail","tarama","cocktail caviar","kebbet lo2os","kebbet salmon","halzoun al baher","le2oss","bezre","2raydess","akhtabout","calamar","salmon","batata me2liyye","hommos","edamame","salmon salad","crab salad","sushi ka salad","chiro mizo soupe","tofu mizo soupe","salmon","white tuna","red tuna","eel","scalops","octopus","mix raw","maki crab","maki avocado","maki cucumber","maki mango","sushi crab","sushi anchovise","maki salmom","maki tuna","maki shrimp","california","crazy california","salmon kimono","green kimono","cold fire","spicy fire","tuna lovers","exotic fruits","salmon ka","black samurai","red samurai","white samurai","sushi ka","yellow sward","green sward","rock n roll","sushi salmom","sushi tuna","sushi shrimp","sushi eel","sushi scalops","sushi octopus","sushi white tuna","temaki salmon","temaki tuna","temaki crab","gunkan wild crab","temaki eel","temaki california","gunkan ikura","fresh lobsters","fresh shrimps","wild crab","local fresh fish","sushi cake","dragon eel","bezre","samak me2le","samak mechwe","kabab","fish burger","fish n chips","shrimp n chips","2raydess maslou2","2raydess mechwe","2raydess me2le","special abou jambo","saumon nayy","saumon mechwe","saumon special","calamar","sanbidej","akhtabout","moule","batrakh","anchoi","sea food special"]
   
    let allPrices: [Int] = [20000,4000,3000,3000,4000,4000,3000,1500,5000,3000,5000,5000,5000,5000,6000,6000,5000,17000,15000,12000,40000,25000,16000,5000,50000,30000,20000,6000,55000,28000,18000,10000,95000,55000,27000,12000,48000,30000,62000,35000,10000,35000,20000,5000,15000,5000,8000,5000,8000,6000,5000,8000,5000,15000,7000,20000,20000,25000,25000,25000,20000,25000,22000,22000,17000,12000,15000,15000,15000,15000,18000,12000,18000,15000,15000,10000,10000,12000,10000,10000,25000,5000,10000,10000,10000,6000,12000,10000,10000,10000,15000,14000,12000,18000,10000,20000,15000,15000,10000,6000,6000,6000,7000,6000,7000,3000,3000,6000,15000,10000,15000,9000,9000,22000,22000,20000,15000,18000,18000,28000,10000,10000,10000,10000,15000,15000,15000,15000,15000,15000,15000,15000,15000,15000,15000,15000,15000,22000,22000,22000,22000,22000,22000,22000,22000,25000,25000,25000,30000,30000,30000,30000,45000,45000,45000,45000,50000,50000,50000,58000,58000,58000,58000,60000,22000,6000,6500,6500,6500,6500,8000,9000,7500,7500,7500,15000,9000,9000,13000,6000,8000,9000,6500,10000,6000,13000]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayForBool = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"]
         sectionTitleArray = ["Taba2 moumayaz me2le aw mechwe","2ahwe wou chay","Machroubet gher rou7iye","Bira","Narjile","Machroubet rou7iye","Meza berde","Samak nay","Atbak kallas el mechwiyye","Safad","Salatat","Meza sokhne wou atbak ba7riye","Atbak kallas el moumayyaza","Sandwichet","Starters and salads","Soups","Raw sushi-sashimi","White sushi","Red sushi","Black sushi","Green sushi","Silver suhsi","Gold sushi","Platinum sushi","Diamond sushi","Specialities","Rawche","Crazy Samak","Rass el na2oura","Jozor el araneb","Jone jounieh"]
        let tmp1: NSArray = ["samak me2leh aw mechweh 2reydis batata hommos fattoush mashroubat ghaziyah"]
        
        let tmp1d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        let tmp2: NSArray = ["espresso","ahweh tirkiyeh","ahweh bayda","nescafe","shay mchakal"]
        
        let tmp2d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        let tmp3: NSArray = ["Miyah ma3daniyah kabira ","Miyah ma3daniyah saghira","Perrier","Machroubat ghaziyah","3assir tazaj","Laymounada","Machroubat taka"]
        
        let tmp3d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        let tmp4: NSArray = ["bira mahalliyeh","bira mexikiyyeh","bira moustawrada","bira doun kouhoul"]
        
        let tmp4d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        let tmp5: NSArray = ["narjile aajame","narjile speciale","narjile mouassal"]
        
        let tmp5d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        let tmp6: NSArray = ["3ara2 3ade annine","3ara2 3ade nossiyeh","3ara2 3ade reb3iyyeh","3ara2 3ade kess","3ara2 extra annine","3ara2 extra nossiyeh","3ara2 extra reb3iyyeh","3ara2 extra kess","whisky 3ade annine","whisky 3ade nossiyeh","whisky 3ade reb3iyyeh","whisky 3ade kess", "whisky extra annine","whisky extra nossiyeh","whisky extra reb3iyeh","whisky extra kess","vodka 3ade annine","vodka 3ade nossiyeh","vodka extra annine","vodka extra nossiyeh","vodka extra kess","nbid annine","nbid nossiyeh"]
        
        let tmp6d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp7: NSArray = ["hommos","hommos bel 2raydess","mtabbal batenjen","mtabbal batenjen extra","tajin","tajin samak","wara2 3enab","ardi chawke","khoudar mechwiyye aw maslou2a","mkhallalet mchakkale","batrakh","anchoi"]
        
        let tmp7d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp8: NSArray = ["hanklis","salmon","ghazal abou senn","farride","sultan","jarou antyass","taba2 asmek nayye","thon abyad aw ahmar","salmon fume","caviar","caviar ahmar aw aswad"]
        let tmp8d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        let tmp9: NSArray = ["lamhe mechwiyye","taouk","kabab mechwe","jwenih djej"]
        
        let tmp9d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp10: NSArray = ["cooky saint Jacque 6 pcs","safad 6 pcs","witer 6pcs","moule kbir","moule zghir"]
        
        let tmp10d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp11: NSArray = ["tabboule","fattouch","salade crab","salatit mawsam","salata charkiyyeh"]
        
        let tmp11d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        let tmp12: NSArray = ["cocktail","batata mechwiye me2liye aw chips","mou3ajjanat","calamar 6pcs","akhtabout","chich 2raydess","2raydess mechwe aw maslou2","sambidej","kebbe halabiye","r2a2at jebne","dafade3 6 pcs"]
        
        let tmp12d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        let tmp13: NSArray = ["r2a2at 2raydess","saumon panne","filet cocktail","tarama","cocktail caviar","kebbet lo2os","kebbet salmon","halzoun al baher"]
        
        let tmp13d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        let tmp14: NSArray = ["le2oss","bezre","2raydess","akhtabout","calamar","salmon","batata me2liyye","hommos"]
        
        let tmp14d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp15: NSArray = ["edamame","salmon salad","crab salad","sushi ka salad"]
        
        let tmp15d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp16: NSArray = ["chiro mizo soupe","tofu mizo soupe"]
        
        let tmp16d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp17: NSArray = ["salmon","white tuna","red tuna","eel","scalops","octopus","mix raw"]
        let tmp17d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp18: NSArray = ["maki crab","maki avocado","maki cucumber","maki mango"]
        let tmp18d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp19: NSArray = ["sushi crab","sushi anchovise","maki salmom","maki tuna","maki shrimp","california","crazy california","salmon kimono","green kimono","cold fire","spicy fire","tuna lovers","exotic fruits"]
        let tmp19d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp20: NSArray = ["salmon ka","black samurai","red samurai","white samurai","sushi ka","yellow sward","green sward","rock n roll"]
        let tmp20d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp21: NSArray = ["sushi salmom","sushi tuna","sushi shrimp"]
        
        let tmp21d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp22: NSArray = ["sushi eel","sushi scalops","sushi octopus","sushi white tuna"]
        let tmp22d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        let tmp23: NSArray = ["temaki salmon","temaki tuna","temaki crab","gunkan wild crab"]
        
        let tmp23d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp24: NSArray = ["temaki eel","temaki california","gunkan ikura"]
        let tmp24d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp25: NSArray = ["fresh lobsters","fresh shrimps","wild crab","local fresh fish"]
        let tmp25d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp26: NSArray = ["sushi cake","dragon eel"]
        
        let tmp26d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp27: NSArray = ["bezre","samak me2le","samak mechwe","kabab","fish burger"]
        let tmp27d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp28: NSArray = ["fish n chips","shrimp n chips"]
        let tmp28d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp29: NSArray = ["2raydess maslou2","2raydess mechwe","2raydess me2le","special abou jambo"]
        let tmp29d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp30: NSArray = ["saumon nayy","saumon mechwe","saumon special"]
        let tmp30d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp31: NSArray = ["calamar","sanbidej","akhtabout","moule","batrakh","anchoi","sea food special"]
        let tmp31d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        let tmp1Prices: NSArray = [20000]
        
        let tmp2Prices: NSArray = [4000,3000,3000,4000,4000]
        
        let tmp3Prices: NSArray = [3000,1500,5000,3000,5000,5000,5000]
        
        let tmp4Prices: NSArray = [5000,6000,6000,5000]
        
        let tmp5Prices: NSArray = [17000,15000,12000]
        
        //20
        let tmp6Prices: NSArray = [40000,25000,16000,5000,50000,30000,20000,6000,55000,28000,18000,10000,95000,55000,27000,12000,48000,30000,62000,35000,10000,35000,20000]
        
        //43
        
        let tmp7Prices: NSArray = [5000,15000,5000,8000,5000,8000,6000,5000,8000,5000,15000,7000]
        
        //55
        
        
        let tmp8Prices: NSArray = [20000,20000,25000,25000,25000,20000,25000,22000,22000,17000,12000]
        
        //66
        
        let tmp9Prices: NSArray = [15000,15000,15000,15000]
        
        let tmp10Prices: NSArray = [18000,12000,18000,15000,15000]
        
        let tmp11Prices: NSArray = [10000,10000,12000,10000,10000]
        
        //80
        
        let tmp12Prices: NSArray = [25000,5000,10000,10000,10000,6000,12000,10000,10000,10000,15000]
        
        //91
        
        let tmp13Prices: NSArray = [14000,12000,18000,10000,20000,15000,15000,10000]
        
        //99
        
        
        
        let tmp14Prices: NSArray = [6000,6000,6000,7000,6000,7000,3000,3000]
        
        //107
        
        let tmp15Prices: NSArray = [6000,15000,10000,15000]
        
        // 111
        
        let tmp16Prices: NSArray = [9000,9000]
        
        //113
        
        let tmp17Prices: NSArray = [22000,22000,20000,15000,18000,18000,28000]
        
        //120
        
        
        let tmp18Prices: NSArray = [10000,10000,10000,10000]
        
        //124
        
        let tmp19Prices: NSArray = [15000,15000,15000,15000,15000,15000,15000,15000,15000,15000,15000,15000,15000]
        
        // 137
        
        let tmp20Prices: NSArray = [22000,22000,22000,22000,22000,22000,22000,22000]
        
        //145
        
        let tmp21Prices: NSArray = [25000,25000,25000]
        
        // 148
        
        let tmp22Prices: NSArray = [30000,30000,30000,30000]
        
        //152
        
        let tmp23Prices: NSArray = [45000,45000,45000,45000]
        
        //156
        
        let tmp24Prices: NSArray = [50000,50000,50000]
        
        // 159
        
        let tmp25Prices: NSArray = [58000,58000,58000,58000]
        
        // 163
        
        let tmp26Prices: NSArray = [60000,22000]
        
        //165
        let tmp27Prices: NSArray = [6000,6500,6500,6500,6500]
        
        //170
        
        let tmp28Prices: NSArray = [8000,9000]
        
        //172
        
        let tmp29Prices: NSArray = [7500,7500,7500,15000]
        
        //176
        
        let tmp30Prices: NSArray = [9000,9000,13000]
        
        //179
        
        let tmp31Prices: NSArray = [6000,8000,9000,6500,10000,6000,13000]
        
        
        //186
        
        print(allPrices.count)
        print(allItems.count)
        
        
     
        var string1 = sectionTitleArray .objectAtIndex(0) as? String
        var price1 = "LL"
        var descr = "d"
        descr += (sectionTitleArray .objectAtIndex(0) as? String)!
        [sectionContentDict .setValue(tmp1d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(0) as? String)!
        [sectionContentDict .setValue(tmp1, forKey:string1! )]
        [sectionContentDict .setValue(tmp1Prices, forKey:price1 )]
        
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
        
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(19) as? String)!
        [sectionContentDict .setValue(tmp20d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(19) as? String)!
        string1 = sectionTitleArray .objectAtIndex(19) as? String
        [sectionContentDict .setValue(tmp20, forKey:string1! )]
        [sectionContentDict .setValue(tmp20Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(20) as? String)!
        [sectionContentDict .setValue(tmp21d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(20) as? String)!
        string1 = sectionTitleArray .objectAtIndex(20) as? String
        [sectionContentDict .setValue(tmp21, forKey:string1! )]
        [sectionContentDict .setValue(tmp21Prices, forKey:price1 )]
        
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(21) as? String)!
        [sectionContentDict .setValue(tmp22d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(21) as? String)!
        string1 = sectionTitleArray .objectAtIndex(21) as? String
        [sectionContentDict .setValue(tmp22, forKey:string1! )]
        [sectionContentDict .setValue(tmp22Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(22) as? String)!
        [sectionContentDict .setValue(tmp23d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(22) as? String)!
        string1 = sectionTitleArray .objectAtIndex(22) as? String
        [sectionContentDict .setValue(tmp23, forKey:string1! )]
        [sectionContentDict .setValue(tmp23Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(23) as? String)!
        [sectionContentDict .setValue(tmp24d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(23) as? String)!
        string1 = sectionTitleArray .objectAtIndex(23) as? String
        [sectionContentDict .setValue(tmp24, forKey:string1! )]
        [sectionContentDict .setValue(tmp24Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(24) as? String)!
        [sectionContentDict .setValue(tmp24d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(24) as? String)!
        string1 = sectionTitleArray .objectAtIndex(24) as? String
        [sectionContentDict .setValue(tmp25, forKey:string1! )]
        [sectionContentDict .setValue(tmp25Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(25) as? String)!
        [sectionContentDict .setValue(tmp26d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(25) as? String)!
        string1 = sectionTitleArray .objectAtIndex(25) as? String
        [sectionContentDict .setValue(tmp26, forKey:string1! )]
        [sectionContentDict .setValue(tmp26Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(26) as? String)!
        [sectionContentDict .setValue(tmp27d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(26) as? String)!
        string1 = sectionTitleArray .objectAtIndex(26) as? String
        [sectionContentDict .setValue(tmp27, forKey:string1! )]
        [sectionContentDict .setValue(tmp27Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(27) as? String)!
        [sectionContentDict .setValue(tmp28d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(27) as? String)!
        string1 = sectionTitleArray .objectAtIndex(27) as? String
        [sectionContentDict .setValue(tmp28, forKey:string1! )]
        [sectionContentDict .setValue(tmp28Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(28) as? String)!
        [sectionContentDict .setValue(tmp29d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(28) as? String)!
        string1 = sectionTitleArray .objectAtIndex(28) as? String
        [sectionContentDict .setValue(tmp29, forKey:string1! )]
        [sectionContentDict .setValue(tmp29Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(29) as? String)!
        [sectionContentDict .setValue(tmp30d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(29) as? String)!
        string1 = sectionTitleArray .objectAtIndex(29) as? String
        [sectionContentDict .setValue(tmp30, forKey:string1! )]
        [sectionContentDict .setValue(tmp30Prices, forKey:price1 )]
        
        price1 = "LL"
        descr = "d"
        descr += (sectionTitleArray .objectAtIndex(30) as? String)!
        [sectionContentDict .setValue(tmp31d, forKey: descr)]
        price1 += (sectionTitleArray .objectAtIndex(30) as? String)!
        string1 = sectionTitleArray .objectAtIndex(30) as? String
        [sectionContentDict .setValue(tmp31, forKey:string1! )]
        [sectionContentDict .setValue(tmp31Prices, forKey:price1 )]
        
        
        tableView.allowsSelection = false
        
        textfieldContents = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        
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
        NSUserDefaults.standardUserDefaults().setObject("Kallas Sea Food", forKey: "restoName")
        
        
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
            var keyd = "d"
            keyd += sectionTitleArray.objectAtIndex(indexPath.section) as! String
            let contentDesc = sectionContentDict .valueForKey(keyd) as! NSArray
            let descString = contentDesc .objectAtIndex(indexPath.row) as? String
            cell.describeLabel?.text = descString
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
        if indexPath.section == 1 && indexPath.row == 0{
            cell.quanTextField.tag = 1
            cell.quanTextField.text = textfieldContents[1]
            cell.checkBox.tag = 1
            cell.checkBox.selected = checkStatus[1]
            
        }
        if indexPath.section == 1 && indexPath.row == 1{
            cell.quanTextField.tag = 2
            cell.quanTextField.text = textfieldContents[2]
            cell.checkBox.tag = 2
            cell.checkBox.selected = checkStatus[2]
            
        }
        if indexPath.section == 1 && indexPath.row == 2{
            cell.quanTextField.tag = 3
            cell.quanTextField.text = textfieldContents[3]
            cell.checkBox.tag = 3
            cell.checkBox.selected = checkStatus[3]
            
        }
        if indexPath.section == 1 && indexPath.row == 3{
            cell.quanTextField.tag = 4
            cell.quanTextField.text = textfieldContents[4]
            cell.checkBox.tag = 4
            cell.checkBox.selected = checkStatus[4]
            
        }
        if indexPath.section == 1 && indexPath.row == 4{
            cell.quanTextField.tag = 5
            cell.quanTextField.text = textfieldContents[5]
            cell.checkBox.tag = 5
            cell.checkBox.selected = checkStatus[5]
            
        }
        if indexPath.section == 2 && indexPath.row == 0{
            cell.quanTextField.tag = 6
            cell.quanTextField.text = textfieldContents[6]
            cell.checkBox.tag = 6
            cell.checkBox.selected = checkStatus[6]
            
        }
        if indexPath.section == 2 && indexPath.row == 1{
            cell.quanTextField.tag = 7
            cell.quanTextField.text = textfieldContents[7]
            cell.checkBox.tag = 7
            cell.checkBox.selected = checkStatus[7]
            
        }
        if indexPath.section == 2 && indexPath.row == 2{
            cell.quanTextField.tag = 8
            cell.quanTextField.text = textfieldContents[8]
            cell.checkBox.tag = 8
            cell.checkBox.selected = checkStatus[8]
            
        }
        if indexPath.section == 2 && indexPath.row == 3{
            cell.quanTextField.tag = 9
            cell.quanTextField.text = textfieldContents[9]
            cell.checkBox.tag = 9
            cell.checkBox.selected = checkStatus[9]
            
        }
        if indexPath.section == 2 && indexPath.row == 4{
            cell.quanTextField.tag = 10
            cell.quanTextField.text = textfieldContents[10]
            cell.checkBox.tag = 10
            cell.checkBox.selected = checkStatus[10]
            
        }
        if indexPath.section == 2 && indexPath.row == 5{
            cell.quanTextField.tag = 11
            cell.quanTextField.text = textfieldContents[11]
            cell.checkBox.tag = 11
            cell.checkBox.selected = checkStatus[11]
            
        }
        if indexPath.section == 2 && indexPath.row == 6{
            cell.quanTextField.tag = 12
            cell.quanTextField.text = textfieldContents[12]
            cell.checkBox.tag = 12
            cell.checkBox.selected = checkStatus[12]
            
        }
        if indexPath.section == 3 && indexPath.row == 0{
            cell.quanTextField.tag = 13
            cell.quanTextField.text = textfieldContents[13]
            cell.checkBox.tag = 13
            cell.checkBox.selected = checkStatus[13]
            
        }
        if indexPath.section == 3 && indexPath.row == 1{
            cell.quanTextField.tag = 14
            cell.quanTextField.text = textfieldContents[14]
            cell.checkBox.tag = 14
            cell.checkBox.selected = checkStatus[14]
            
        }
        if indexPath.section == 3 && indexPath.row == 2{
            cell.quanTextField.tag = 15
            cell.quanTextField.text = textfieldContents[15]
            cell.checkBox.tag = 15
            cell.checkBox.selected = checkStatus[15]
            
        }
        if indexPath.section == 3 && indexPath.row == 3{
            cell.quanTextField.tag = 16
            cell.quanTextField.text = textfieldContents[16]
            cell.checkBox.tag = 16
            cell.checkBox.selected = checkStatus[16]
            
        }
        if indexPath.section == 4 && indexPath.row == 0{
            cell.quanTextField.tag = 17
            cell.quanTextField.text = textfieldContents[17]
            cell.checkBox.tag = 17
            cell.checkBox.selected = checkStatus[17]
            
        }
        if indexPath.section == 4 && indexPath.row == 1{
            cell.quanTextField.tag = 18
            cell.quanTextField.text = textfieldContents[18]
            cell.checkBox.tag = 18
            cell.checkBox.selected = checkStatus[18]
            
        }
        if indexPath.section == 4 && indexPath.row == 2{
            cell.quanTextField.tag = 19
            cell.quanTextField.text = textfieldContents[19]
            cell.checkBox.tag = 19
            cell.checkBox.selected = checkStatus[19]
            
        }
        if indexPath.section == 5 && indexPath.row == 0{
            cell.quanTextField.tag = 20
            cell.quanTextField.text = textfieldContents[20]
            cell.checkBox.tag = 20
            cell.checkBox.selected = checkStatus[20]
            
        }
        if indexPath.section == 5 && indexPath.row == 1{
            cell.quanTextField.tag = 21
            cell.quanTextField.text = textfieldContents[21]
            cell.checkBox.tag = 21
            cell.checkBox.selected = checkStatus[21]
            
        }
        if indexPath.section == 5 && indexPath.row == 2{
            cell.quanTextField.tag = 22
            cell.quanTextField.text = textfieldContents[22]
            cell.checkBox.tag = 22
            cell.checkBox.selected = checkStatus[22]
            
        }
        if indexPath.section == 5 && indexPath.row == 3{
            cell.quanTextField.tag = 23
            cell.quanTextField.text = textfieldContents[23]
            cell.checkBox.tag = 23
            cell.checkBox.selected = checkStatus[23]
            
        }
        if indexPath.section == 5 && indexPath.row == 4{
            cell.quanTextField.tag = 24
            cell.quanTextField.text = textfieldContents[24]
            cell.checkBox.tag = 24
            cell.checkBox.selected = checkStatus[24]
            
        }
        if indexPath.section == 5 && indexPath.row == 5{
            cell.quanTextField.tag = 25
            cell.quanTextField.text = textfieldContents[25]
            cell.checkBox.tag = 25
            cell.checkBox.selected = checkStatus[25]
            
        }
        if indexPath.section == 5 && indexPath.row == 6{
            cell.quanTextField.tag = 26
            cell.quanTextField.text = textfieldContents[26]
            cell.checkBox.tag = 26
            cell.checkBox.selected = checkStatus[26]
            
        }
        if indexPath.section == 5 && indexPath.row == 7{
            cell.quanTextField.tag = 27
            cell.quanTextField.text = textfieldContents[27]
            cell.checkBox.tag = 27
            cell.checkBox.selected = checkStatus[27]
            
        }
        if indexPath.section == 5 && indexPath.row == 8{
            cell.quanTextField.tag = 28
            cell.quanTextField.text = textfieldContents[28]
            cell.checkBox.tag = 28
            cell.checkBox.selected = checkStatus[28]
            
        }
        if indexPath.section == 5 && indexPath.row == 9{
            cell.quanTextField.tag = 29
            cell.quanTextField.text = textfieldContents[29]
            cell.checkBox.tag = 29
            cell.checkBox.selected = checkStatus[29]
            
        }
        if indexPath.section == 5 && indexPath.row == 10{
            cell.quanTextField.tag = 30
            cell.quanTextField.text = textfieldContents[30]
            cell.checkBox.tag = 30
            cell.checkBox.selected = checkStatus[30]
            
        }
        if indexPath.section == 5 && indexPath.row == 11{
            cell.quanTextField.tag = 31
            cell.quanTextField.text = textfieldContents[31]
            cell.checkBox.tag = 31
            cell.checkBox.selected = checkStatus[31]
            
        }
        if indexPath.section == 5 && indexPath.row == 12{
            cell.quanTextField.tag = 32
            cell.quanTextField.text = textfieldContents[32]
            cell.checkBox.tag = 32
            cell.checkBox.selected = checkStatus[32]
            
        }
        if indexPath.section == 5 && indexPath.row == 13{
            cell.quanTextField.tag = 33
            cell.quanTextField.text = textfieldContents[33]
            cell.checkBox.tag = 33
            cell.checkBox.selected = checkStatus[33]
            
        }
        if indexPath.section == 5 && indexPath.row == 14{
            cell.quanTextField.tag = 34
            cell.quanTextField.text = textfieldContents[34]
            cell.checkBox.tag = 34
            cell.checkBox.selected = checkStatus[34]
            
        }
        if indexPath.section == 5 && indexPath.row == 15{
            cell.quanTextField.tag = 35
            cell.quanTextField.text = textfieldContents[35]
            cell.checkBox.tag = 35
            cell.checkBox.selected = checkStatus[35]
            
        }
        if indexPath.section == 5 && indexPath.row == 16{
            cell.quanTextField.tag = 36
            cell.quanTextField.text = textfieldContents[36]
            cell.checkBox.tag = 36
            cell.checkBox.selected = checkStatus[36]
            
        }
        if indexPath.section == 5 && indexPath.row == 17{
            cell.quanTextField.tag = 37
            cell.quanTextField.text = textfieldContents[37]
            cell.checkBox.tag = 37
            cell.checkBox.selected = checkStatus[37]
            
        }
        if indexPath.section == 5 && indexPath.row == 18{
            cell.quanTextField.tag = 38
            cell.quanTextField.text = textfieldContents[38]
            cell.checkBox.tag = 38
            cell.checkBox.selected = checkStatus[38]
            
        }
        if indexPath.section == 5 && indexPath.row == 19{
            cell.quanTextField.tag = 39
            cell.quanTextField.text = textfieldContents[39]
            cell.checkBox.tag = 39
            cell.checkBox.selected = checkStatus[39]
            
        }
        if indexPath.section == 5 && indexPath.row == 20{
            cell.quanTextField.tag = 40
            cell.quanTextField.text = textfieldContents[40]
            cell.checkBox.tag = 40
            cell.checkBox.selected = checkStatus[40]
            
        }
        if indexPath.section == 5 && indexPath.row == 21{
            cell.quanTextField.tag = 41
            cell.quanTextField.text = textfieldContents[41]
            cell.checkBox.tag = 41
            cell.checkBox.selected = checkStatus[41]
            
        }
        if indexPath.section == 5 && indexPath.row == 22{
            cell.quanTextField.tag = 42
            cell.quanTextField.text = textfieldContents[42]
            cell.checkBox.tag = 42
            cell.checkBox.selected = checkStatus[42]
            
        }
        if indexPath.section == 6 && indexPath.row == 0{
            cell.quanTextField.tag = 43
            cell.quanTextField.text = textfieldContents[43]
            cell.checkBox.tag = 43
            cell.checkBox.selected = checkStatus[43]
            
        }
        if indexPath.section == 6 && indexPath.row == 1{
            cell.quanTextField.tag = 44
            cell.quanTextField.text = textfieldContents[44]
            cell.checkBox.tag = 44
            cell.checkBox.selected = checkStatus[44]
            
        }
        if indexPath.section == 6 && indexPath.row == 2{
            cell.quanTextField.tag = 45
            cell.quanTextField.text = textfieldContents[45]
            cell.checkBox.tag = 45
            cell.checkBox.selected = checkStatus[45]
            
        }
        if indexPath.section == 6 && indexPath.row == 3{
            cell.quanTextField.tag = 46
            cell.quanTextField.text = textfieldContents[46]
            cell.checkBox.tag = 46
            cell.checkBox.selected = checkStatus[46]
            
        }
        if indexPath.section == 6 && indexPath.row == 4{
            cell.quanTextField.tag = 47
            cell.quanTextField.text = textfieldContents[47]
            cell.checkBox.tag = 47
            cell.checkBox.selected = checkStatus[47]
            
        }
        if indexPath.section == 6 && indexPath.row == 5{
            cell.quanTextField.tag = 48
            cell.quanTextField.text = textfieldContents[48]
            cell.checkBox.tag = 48
            cell.checkBox.selected = checkStatus[48]
            
        }
        if indexPath.section == 6 && indexPath.row == 6{
            cell.quanTextField.tag = 49
            cell.quanTextField.text = textfieldContents[49]
            cell.checkBox.tag = 49
            cell.checkBox.selected = checkStatus[49]
            
        }
        if indexPath.section == 6 && indexPath.row == 7{
            cell.quanTextField.tag = 50
            cell.quanTextField.text = textfieldContents[50]
            cell.checkBox.tag = 50
            cell.checkBox.selected = checkStatus[50]
            
        }
        if indexPath.section == 6 && indexPath.row == 8{
            cell.quanTextField.tag = 51
            cell.quanTextField.text = textfieldContents[51]
            cell.checkBox.tag = 51
            cell.checkBox.selected = checkStatus[51]
            
        }
        if indexPath.section == 6 && indexPath.row == 9{
            cell.quanTextField.tag = 52
            cell.quanTextField.text = textfieldContents[52]
            cell.checkBox.tag = 52
            cell.checkBox.selected = checkStatus[52]
            
        }
        if indexPath.section == 6 && indexPath.row == 10{
            cell.quanTextField.tag = 53
            cell.quanTextField.text = textfieldContents[53]
            cell.checkBox.tag = 53
            cell.checkBox.selected = checkStatus[53]
            
        }
        if indexPath.section == 6 && indexPath.row == 11{
            cell.quanTextField.tag = 54
            cell.quanTextField.text = textfieldContents[54]
            cell.checkBox.tag = 54
            cell.checkBox.selected = checkStatus[54]
            
        }
        if indexPath.section == 7 && indexPath.row == 0{
            cell.quanTextField.tag = 55
            cell.quanTextField.text = textfieldContents[55]
            cell.checkBox.tag = 55
            cell.checkBox.selected = checkStatus[55]
            
        }
        if indexPath.section == 7 && indexPath.row == 1{
            cell.quanTextField.tag = 56
            cell.quanTextField.text = textfieldContents[56]
            cell.checkBox.tag = 56
            cell.checkBox.selected = checkStatus[56]
            
        }
        if indexPath.section == 7 && indexPath.row == 2{
            cell.quanTextField.tag = 57
            cell.quanTextField.text = textfieldContents[57]
            cell.checkBox.tag = 57
            cell.checkBox.selected = checkStatus[57]
            
        }
        if indexPath.section == 7 && indexPath.row == 3{
            cell.quanTextField.tag = 58
            cell.quanTextField.text = textfieldContents[58]
            cell.checkBox.tag = 58
            cell.checkBox.selected = checkStatus[58]
            
        }
        if indexPath.section == 7 && indexPath.row == 4{
            cell.quanTextField.tag = 59
            cell.quanTextField.text = textfieldContents[59]
            cell.checkBox.tag = 59
            cell.checkBox.selected = checkStatus[59]
            
        }
        if indexPath.section == 7 && indexPath.row == 5{
            cell.quanTextField.tag = 60
            cell.quanTextField.text = textfieldContents[60]
            cell.checkBox.tag = 60
            cell.checkBox.selected = checkStatus[60]
            
        }
        if indexPath.section == 7 && indexPath.row == 6{
            cell.quanTextField.tag = 61
            cell.quanTextField.text = textfieldContents[61]
            cell.checkBox.tag = 61
            cell.checkBox.selected = checkStatus[61]
            
        }
        if indexPath.section == 7 && indexPath.row == 7{
            cell.quanTextField.tag = 62
            cell.quanTextField.text = textfieldContents[62]
            cell.checkBox.tag = 62
            cell.checkBox.selected = checkStatus[62]
            
        }
        if indexPath.section == 7 && indexPath.row == 8{
            cell.quanTextField.tag = 63
            cell.quanTextField.text = textfieldContents[63]
            cell.checkBox.tag = 63
            cell.checkBox.selected = checkStatus[63]
            
        }
        if indexPath.section == 7 && indexPath.row == 9{
            cell.quanTextField.tag = 64
            cell.quanTextField.text = textfieldContents[64]
            cell.checkBox.tag = 64
            cell.checkBox.selected = checkStatus[64]
            
        }
        if indexPath.section == 7 && indexPath.row == 10{
            cell.quanTextField.tag = 65
            cell.quanTextField.text = textfieldContents[65]
            cell.checkBox.tag = 65
            cell.checkBox.selected = checkStatus[65]
            
        }
        if indexPath.section == 8 && indexPath.row == 0{
            cell.quanTextField.tag = 66
            cell.quanTextField.text = textfieldContents[66]
            cell.checkBox.tag = 66
            cell.checkBox.selected = checkStatus[66]
            
        }
        if indexPath.section == 8 && indexPath.row == 1{
            cell.quanTextField.tag = 67
            cell.quanTextField.text = textfieldContents[67]
            cell.checkBox.tag = 67
            cell.checkBox.selected = checkStatus[67]
            
        }
        if indexPath.section == 8 && indexPath.row == 2{
            cell.quanTextField.tag = 68
            cell.quanTextField.text = textfieldContents[68]
            cell.checkBox.tag = 68
            cell.checkBox.selected = checkStatus[68]
            
        }
        if indexPath.section == 8 && indexPath.row == 3{
            cell.quanTextField.tag = 69
            cell.quanTextField.text = textfieldContents[69]
            cell.checkBox.tag = 69
            cell.checkBox.selected = checkStatus[69]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 0{
            cell.quanTextField.tag = 70
            cell.quanTextField.text = textfieldContents[70]
            cell.checkBox.tag = 70
            cell.checkBox.selected = checkStatus[70]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 1{
            cell.quanTextField.tag = 71
            cell.quanTextField.text = textfieldContents[71]
            cell.checkBox.tag = 71
            cell.checkBox.selected = checkStatus[71]
            
        }

        
        if indexPath.section == 9 && indexPath.row == 2{
            cell.quanTextField.tag = 72
            cell.quanTextField.text = textfieldContents[72]
            cell.checkBox.tag = 72
            cell.checkBox.selected = checkStatus[72]
            
        }

        
        if indexPath.section == 9 && indexPath.row == 3{
            cell.quanTextField.tag = 73
            cell.quanTextField.text = textfieldContents[73]
            cell.checkBox.tag = 73
            cell.checkBox.selected = checkStatus[73]
            
        }

        if indexPath.section == 9 && indexPath.row == 4{
            cell.quanTextField.tag = 74
            cell.quanTextField.text = textfieldContents[74]
            cell.checkBox.tag = 74
            cell.checkBox.selected = checkStatus[74]
            
        }

        if indexPath.section == 10 && indexPath.row == 0{
            cell.quanTextField.tag = 75
            cell.quanTextField.text = textfieldContents[75]
            cell.checkBox.tag = 75
            cell.checkBox.selected = checkStatus[75]
            
        }
        
        if indexPath.section == 10 && indexPath.row == 1{
            cell.quanTextField.tag = 76
            cell.quanTextField.text = textfieldContents[76]
            cell.checkBox.tag = 76
            cell.checkBox.selected = checkStatus[76]
            
        }
        
        if indexPath.section == 10 && indexPath.row == 2{
            cell.quanTextField.tag = 77
            cell.quanTextField.text = textfieldContents[77]
            cell.checkBox.tag = 77
            cell.checkBox.selected = checkStatus[77]
            
        }
        
        if indexPath.section == 10 && indexPath.row == 3{
            cell.quanTextField.tag = 78
            cell.quanTextField.text = textfieldContents[78]
            cell.checkBox.tag = 78
            cell.checkBox.selected = checkStatus[78]
            
        }
        
        if indexPath.section == 10 && indexPath.row == 4{
            cell.quanTextField.tag = 79
            cell.quanTextField.text = textfieldContents[79]
            cell.checkBox.tag = 79
            cell.checkBox.selected = checkStatus[79]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 0{
            cell.quanTextField.tag = 80
            cell.quanTextField.text = textfieldContents[80]
            cell.checkBox.tag = 80
            cell.checkBox.selected = checkStatus[80]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 1{
            cell.quanTextField.tag = 81
            cell.quanTextField.text = textfieldContents[81]
            cell.checkBox.tag = 81
            cell.checkBox.selected = checkStatus[81]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 2{
            cell.quanTextField.tag = 82
            cell.quanTextField.text = textfieldContents[82]
            cell.checkBox.tag = 82
            cell.checkBox.selected = checkStatus[82]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 3{
            cell.quanTextField.tag = 83
            cell.quanTextField.text = textfieldContents[83]
            cell.checkBox.tag = 83
            cell.checkBox.selected = checkStatus[83]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 4{
            cell.quanTextField.tag = 84
            cell.quanTextField.text = textfieldContents[84]
            cell.checkBox.tag = 84
            cell.checkBox.selected = checkStatus[84]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 5{
            cell.quanTextField.tag = 85
            cell.quanTextField.text = textfieldContents[85]
            cell.checkBox.tag = 85
            cell.checkBox.selected = checkStatus[85]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 6{
            cell.quanTextField.tag = 86
            cell.quanTextField.text = textfieldContents[86]
            cell.checkBox.tag = 86
            cell.checkBox.selected = checkStatus[86]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 7{
            cell.quanTextField.tag = 87
            cell.quanTextField.text = textfieldContents[87]
            cell.checkBox.tag = 87
            cell.checkBox.selected = checkStatus[87]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 8{
            cell.quanTextField.tag = 88
            cell.quanTextField.text = textfieldContents[88]
            cell.checkBox.tag = 88
            cell.checkBox.selected = checkStatus[88]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 9{
            cell.quanTextField.tag = 89
            cell.quanTextField.text = textfieldContents[89]
            cell.checkBox.tag = 89
            cell.checkBox.selected = checkStatus[89]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 10{
            cell.quanTextField.tag = 90
            cell.quanTextField.text = textfieldContents[90]
            cell.checkBox.tag = 90
            cell.checkBox.selected = checkStatus[90]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 0{
            cell.quanTextField.tag = 91
            cell.quanTextField.text = textfieldContents[91]
            cell.checkBox.tag = 91
            cell.checkBox.selected = checkStatus[91]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 1{
            cell.quanTextField.tag = 92
            cell.quanTextField.text = textfieldContents[92]
            cell.checkBox.tag = 92
            cell.checkBox.selected = checkStatus[92]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 2{
            cell.quanTextField.tag = 93
            cell.quanTextField.text = textfieldContents[93]
            cell.checkBox.tag = 93
            cell.checkBox.selected = checkStatus[93]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 3{
            cell.quanTextField.tag = 94
            cell.quanTextField.text = textfieldContents[94]
            cell.checkBox.tag = 94
            cell.checkBox.selected = checkStatus[94]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 4{
            cell.quanTextField.tag = 95
            cell.quanTextField.text = textfieldContents[95]
            cell.checkBox.tag = 95
            cell.checkBox.selected = checkStatus[95]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 5{
            cell.quanTextField.tag = 96
            cell.quanTextField.text = textfieldContents[96]
            cell.checkBox.tag = 96
            cell.checkBox.selected = checkStatus[96]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 6{
            cell.quanTextField.tag = 97
            cell.quanTextField.text = textfieldContents[97]
            cell.checkBox.tag = 97
            cell.checkBox.selected = checkStatus[97]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 7{
            cell.quanTextField.tag = 98
            cell.quanTextField.text = textfieldContents[98]
            cell.checkBox.tag = 98
            cell.checkBox.selected = checkStatus[98]
            
        }
        
        
        if indexPath.section == 13 && indexPath.row == 0{
            cell.quanTextField.tag = 99
            cell.quanTextField.text = textfieldContents[99]
            cell.checkBox.tag = 99
            cell.checkBox.selected = checkStatus[99]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 1{
            cell.quanTextField.tag = 100
            cell.quanTextField.text = textfieldContents[100]
            cell.checkBox.tag = 100
            cell.checkBox.selected = checkStatus[100]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 2{
            cell.quanTextField.tag = 101
            cell.quanTextField.text = textfieldContents[101]
            cell.checkBox.tag = 101
            cell.checkBox.selected = checkStatus[101]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 3{
            cell.quanTextField.tag = 102
            cell.quanTextField.text = textfieldContents[102]
            cell.checkBox.tag = 102
            cell.checkBox.selected = checkStatus[102]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 4{
            cell.quanTextField.tag = 103
            cell.quanTextField.text = textfieldContents[103]
            cell.checkBox.tag = 103
            cell.checkBox.selected = checkStatus[103]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 5{
            cell.quanTextField.tag = 104
            cell.quanTextField.text = textfieldContents[104]
            cell.checkBox.tag = 104
            cell.checkBox.selected = checkStatus[104]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 6{
            cell.quanTextField.tag = 105
            cell.quanTextField.text = textfieldContents[105]
            cell.checkBox.tag = 105
            cell.checkBox.selected = checkStatus[105]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 7{
            cell.quanTextField.tag = 106
            cell.quanTextField.text = textfieldContents[106]
            cell.checkBox.tag = 106
            cell.checkBox.selected = checkStatus[106]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 0{
            cell.quanTextField.tag = 107
            cell.quanTextField.text = textfieldContents[107]
            cell.checkBox.tag = 107
            cell.checkBox.selected = checkStatus[107]
            
        }
        
        
        if indexPath.section == 14 && indexPath.row == 1{
            cell.quanTextField.tag = 108
            cell.quanTextField.text = textfieldContents[108]
            cell.checkBox.tag = 108
            cell.checkBox.selected = checkStatus[108]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 2{
            cell.quanTextField.tag = 109
            cell.quanTextField.text = textfieldContents[109]
            cell.checkBox.tag = 109
            cell.checkBox.selected = checkStatus[109]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 3{
            cell.quanTextField.tag = 110
            cell.quanTextField.text = textfieldContents[110]
            cell.checkBox.tag = 110
            cell.checkBox.selected = checkStatus[110]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 0{
            cell.quanTextField.tag = 111
            cell.quanTextField.text = textfieldContents[111]
            cell.checkBox.tag = 111
            cell.checkBox.selected = checkStatus[111]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 1{
            cell.quanTextField.tag = 112
            cell.quanTextField.text = textfieldContents[112]
            cell.checkBox.tag = 112
            cell.checkBox.selected = checkStatus[112]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 0{
            cell.quanTextField.tag = 113
            cell.quanTextField.text = textfieldContents[113]
            cell.checkBox.tag = 113
            cell.checkBox.selected = checkStatus[113]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 1{
            cell.quanTextField.tag = 114
            cell.quanTextField.text = textfieldContents[114]
            cell.checkBox.tag = 114
            cell.checkBox.selected = checkStatus[114]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 2{
            cell.quanTextField.tag = 115
            cell.quanTextField.text = textfieldContents[115]
            cell.checkBox.tag = 115
            cell.checkBox.selected = checkStatus[115]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 3{
            cell.quanTextField.tag = 116
            cell.quanTextField.text = textfieldContents[116]
            cell.checkBox.tag = 116
            cell.checkBox.selected = checkStatus[116]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 4{
            cell.quanTextField.tag = 117
            cell.quanTextField.text = textfieldContents[117]
            cell.checkBox.tag = 117
            cell.checkBox.selected = checkStatus[117]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 5{
            cell.quanTextField.tag = 118
            cell.quanTextField.text = textfieldContents[118]
            cell.checkBox.tag = 118
            cell.checkBox.selected = checkStatus[118]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 6{
            cell.quanTextField.tag = 119
            cell.quanTextField.text = textfieldContents[119]
            cell.checkBox.tag = 119
            cell.checkBox.selected = checkStatus[119]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 0{
            cell.quanTextField.tag = 120
            cell.quanTextField.text = textfieldContents[120]
            cell.checkBox.tag = 120
            cell.checkBox.selected = checkStatus[120]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 1{
            cell.quanTextField.tag = 121
            cell.quanTextField.text = textfieldContents[121]
            cell.checkBox.tag = 121
            cell.checkBox.selected = checkStatus[121]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 2{
            cell.quanTextField.tag = 122
            cell.quanTextField.text = textfieldContents[122]
            cell.checkBox.tag = 122
            cell.checkBox.selected = checkStatus[122]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 3{
            cell.quanTextField.tag = 123
            cell.quanTextField.text = textfieldContents[123]
            cell.checkBox.tag = 123
            cell.checkBox.selected = checkStatus[123]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 0{
            cell.quanTextField.tag = 124
            cell.quanTextField.text = textfieldContents[124]
            cell.checkBox.tag = 124
            cell.checkBox.selected = checkStatus[124]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 1{
            cell.quanTextField.tag = 125
            cell.quanTextField.text = textfieldContents[125]
            cell.checkBox.tag = 125
            cell.checkBox.selected = checkStatus[125]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 2{
            cell.quanTextField.tag = 126
            cell.quanTextField.text = textfieldContents[126]
            cell.checkBox.tag = 126
            cell.checkBox.selected = checkStatus[126]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 3{
            cell.quanTextField.tag = 127
            cell.quanTextField.text = textfieldContents[127]
            cell.checkBox.tag = 127
            cell.checkBox.selected = checkStatus[127]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 4{
            cell.quanTextField.tag = 128
            cell.quanTextField.text = textfieldContents[128]
            cell.checkBox.tag = 128
            cell.checkBox.selected = checkStatus[128]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 5{
            cell.quanTextField.tag = 129
            cell.quanTextField.text = textfieldContents[129]
            cell.checkBox.tag = 129
            cell.checkBox.selected = checkStatus[129]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 6{
            cell.quanTextField.tag = 130
            cell.quanTextField.text = textfieldContents[130]
            cell.checkBox.tag = 130
            cell.checkBox.selected = checkStatus[130]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 7{
            cell.quanTextField.tag = 131
            cell.quanTextField.text = textfieldContents[131]
            cell.checkBox.tag = 131
            cell.checkBox.selected = checkStatus[131]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 8{
            cell.quanTextField.tag = 132
            cell.quanTextField.text = textfieldContents[132]
            cell.checkBox.tag = 132
            cell.checkBox.selected = checkStatus[132]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 9{
            cell.quanTextField.tag = 133
            cell.quanTextField.text = textfieldContents[133]
            cell.checkBox.tag = 133
            cell.checkBox.selected = checkStatus[133]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 10{
            cell.quanTextField.tag = 134
            cell.quanTextField.text = textfieldContents[134]
            cell.checkBox.tag = 134
            cell.checkBox.selected = checkStatus[134]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 11{
            cell.quanTextField.tag = 135
            cell.quanTextField.text = textfieldContents[135]
            cell.checkBox.tag = 135
            cell.checkBox.selected = checkStatus[135]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 12{
            cell.quanTextField.tag = 136
            cell.quanTextField.text = textfieldContents[136]
            cell.checkBox.tag = 136
            cell.checkBox.selected = checkStatus[136]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 0{
            cell.quanTextField.tag = 137
            cell.quanTextField.text = textfieldContents[137]
            cell.checkBox.tag = 137
            cell.checkBox.selected = checkStatus[137]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 1{
            cell.quanTextField.tag = 138
            cell.quanTextField.text = textfieldContents[138]
            cell.checkBox.tag = 138
            cell.checkBox.selected = checkStatus[138]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 2{
            cell.quanTextField.tag = 139
            cell.quanTextField.text = textfieldContents[139]
            cell.checkBox.tag = 139
            cell.checkBox.selected = checkStatus[139]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 3{
            cell.quanTextField.tag = 140
            cell.quanTextField.text = textfieldContents[140]
            cell.checkBox.tag = 140
            cell.checkBox.selected = checkStatus[140]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 4{
            cell.quanTextField.tag = 141
            cell.quanTextField.text = textfieldContents[141]
            cell.checkBox.tag = 141
            cell.checkBox.selected = checkStatus[141]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 5{
            cell.quanTextField.tag = 142
            cell.quanTextField.text = textfieldContents[142]
            cell.checkBox.tag = 142
            cell.checkBox.selected = checkStatus[142]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 6{
            cell.quanTextField.tag = 143
            cell.quanTextField.text = textfieldContents[143]
            cell.checkBox.tag = 143
            cell.checkBox.selected = checkStatus[143]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 7{
            cell.quanTextField.tag = 144
            cell.quanTextField.text = textfieldContents[144]
            cell.checkBox.tag = 144
            cell.checkBox.selected = checkStatus[144]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 0{
            cell.quanTextField.tag = 145
            cell.quanTextField.text = textfieldContents[145]
            cell.checkBox.tag = 145
            cell.checkBox.selected = checkStatus[145]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 1{
            cell.quanTextField.tag = 146
            cell.quanTextField.text = textfieldContents[146]
            cell.checkBox.tag = 146
            cell.checkBox.selected = checkStatus[146]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 2{
            cell.quanTextField.tag = 147
            cell.quanTextField.text = textfieldContents[147]
            cell.checkBox.tag = 147
            cell.checkBox.selected = checkStatus[147]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 0{
            cell.quanTextField.tag = 148
            cell.quanTextField.text = textfieldContents[148]
            cell.checkBox.tag = 148
            cell.checkBox.selected = checkStatus[148]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 1{
            cell.quanTextField.tag = 149
            cell.quanTextField.text = textfieldContents[149]
            cell.checkBox.tag = 149
            cell.checkBox.selected = checkStatus[149]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 2{
            cell.quanTextField.tag = 150
            cell.quanTextField.text = textfieldContents[150]
            cell.checkBox.tag = 150
            cell.checkBox.selected = checkStatus[150]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 3{
            cell.quanTextField.tag = 151
            cell.quanTextField.text = textfieldContents[151]
            cell.checkBox.tag = 151
            cell.checkBox.selected = checkStatus[151]
            
        }
        
        if indexPath.section == 22 && indexPath.row == 0{
            cell.quanTextField.tag = 152
            cell.quanTextField.text = textfieldContents[152]
            cell.checkBox.tag = 152
            cell.checkBox.selected = checkStatus[152]
            
        }
        
        if indexPath.section == 22 && indexPath.row == 1{
            cell.quanTextField.tag = 153
            cell.quanTextField.text = textfieldContents[153]
            cell.checkBox.tag = 153
            cell.checkBox.selected = checkStatus[153]
            
        }
        
        if indexPath.section == 22 && indexPath.row == 2{
            cell.quanTextField.tag = 154
            cell.quanTextField.text = textfieldContents[154]
            cell.checkBox.tag = 154
            cell.checkBox.selected = checkStatus[154]
            
        }
        
        if indexPath.section == 22 && indexPath.row == 3{
            cell.quanTextField.tag = 155
            cell.quanTextField.text = textfieldContents[155]
            cell.checkBox.tag = 155
            cell.checkBox.selected = checkStatus[155]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 0{
            cell.quanTextField.tag = 156
            cell.quanTextField.text = textfieldContents[156]
            cell.checkBox.tag = 156
            cell.checkBox.selected = checkStatus[156]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 1{
            cell.quanTextField.tag = 157
            cell.quanTextField.text = textfieldContents[157]
            cell.checkBox.tag = 157
            cell.checkBox.selected = checkStatus[157]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 2{
            cell.quanTextField.tag = 158
            cell.quanTextField.text = textfieldContents[158]
            cell.checkBox.tag = 158
            cell.checkBox.selected = checkStatus[158]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 0{
            cell.quanTextField.tag = 159
            cell.quanTextField.text = textfieldContents[159]
            cell.checkBox.tag = 159
            cell.checkBox.selected = checkStatus[159]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 1{
            cell.quanTextField.tag = 160
            cell.quanTextField.text = textfieldContents[160]
            cell.checkBox.tag = 160
            cell.checkBox.selected = checkStatus[160]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 2{
            cell.quanTextField.tag = 161
            cell.quanTextField.text = textfieldContents[161]
            cell.checkBox.tag = 161
            cell.checkBox.selected = checkStatus[161]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 3{
            cell.quanTextField.tag = 162
            cell.quanTextField.text = textfieldContents[162]
            cell.checkBox.tag = 162
            cell.checkBox.selected = checkStatus[162]
            
        }
        
        if indexPath.section == 25 && indexPath.row == 0{
            cell.quanTextField.tag = 163
            cell.quanTextField.text = textfieldContents[163]
            cell.checkBox.tag = 163
            cell.checkBox.selected = checkStatus[163]
            
        }
        
        if indexPath.section == 25 && indexPath.row == 1{
            cell.quanTextField.tag = 164
            cell.quanTextField.text = textfieldContents[164]
            cell.checkBox.tag = 164
            cell.checkBox.selected = checkStatus[164]
            
        }
        
        if indexPath.section == 26 && indexPath.row == 0{
            cell.quanTextField.tag = 165
            cell.quanTextField.text = textfieldContents[165]
            cell.checkBox.tag = 165
            cell.checkBox.selected = checkStatus[165]
            
        }
        
        if indexPath.section == 26 && indexPath.row == 1{
            cell.quanTextField.tag = 166
            cell.quanTextField.text = textfieldContents[166]
            cell.checkBox.tag = 166
            cell.checkBox.selected = checkStatus[166]
            
        }
        
        if indexPath.section == 26 && indexPath.row == 2{
            cell.quanTextField.tag = 167
            cell.quanTextField.text = textfieldContents[167]
            cell.checkBox.tag = 167
            cell.checkBox.selected = checkStatus[167]
            
        }
        
        if indexPath.section == 26 && indexPath.row == 3{
            cell.quanTextField.tag = 168
            cell.quanTextField.text = textfieldContents[168]
            cell.checkBox.tag = 168
            cell.checkBox.selected = checkStatus[168]
            
        }
        
        if indexPath.section == 26 && indexPath.row == 4{
            cell.quanTextField.tag = 169
            cell.quanTextField.text = textfieldContents[169]
            cell.checkBox.tag = 169
            cell.checkBox.selected = checkStatus[169]
            
        }
        
        if indexPath.section == 27 && indexPath.row == 0{
            cell.quanTextField.tag = 170
            cell.quanTextField.text = textfieldContents[170]
            cell.checkBox.tag = 170
            cell.checkBox.selected = checkStatus[170]
            
        }
        
        if indexPath.section == 27 && indexPath.row == 1{
            cell.quanTextField.tag = 171
            cell.quanTextField.text = textfieldContents[171]
            cell.checkBox.tag = 171
            cell.checkBox.selected = checkStatus[171]
            
        }
        
        if indexPath.section == 28 && indexPath.row == 0{
            cell.quanTextField.tag = 172
            cell.quanTextField.text = textfieldContents[172]
            cell.checkBox.tag = 172
            cell.checkBox.selected = checkStatus[172]
            
        }
        
        if indexPath.section == 28 && indexPath.row == 1{
            cell.quanTextField.tag = 173
            cell.quanTextField.text = textfieldContents[173]
            cell.checkBox.tag = 173
            cell.checkBox.selected = checkStatus[173]
            
        }
        
        if indexPath.section == 28 && indexPath.row == 2{
            cell.quanTextField.tag = 174
            cell.quanTextField.text = textfieldContents[174]
            cell.checkBox.tag = 174
            cell.checkBox.selected = checkStatus[174]
            
        }
        
        if indexPath.section == 28 && indexPath.row == 3{
            cell.quanTextField.tag = 175
            cell.quanTextField.text = textfieldContents[175]
            cell.checkBox.tag = 175
            cell.checkBox.selected = checkStatus[175]
            
        }
        
        if indexPath.section == 29 && indexPath.row == 0{
            cell.quanTextField.tag = 176
            cell.quanTextField.text = textfieldContents[176]
            cell.checkBox.tag = 176
            cell.checkBox.selected = checkStatus[176]
            
        }
        
        if indexPath.section == 29 && indexPath.row == 1{
            cell.quanTextField.tag = 177
            cell.quanTextField.text = textfieldContents[177]
            cell.checkBox.tag = 177
            cell.checkBox.selected = checkStatus[177]
            
        }
        
        if indexPath.section == 29 && indexPath.row == 2{
            cell.quanTextField.tag = 178
            cell.quanTextField.text = textfieldContents[178]
            cell.checkBox.tag = 178
            cell.checkBox.selected = checkStatus[178]
            
        }
        
        if indexPath.section == 30 && indexPath.row == 0{
            cell.quanTextField.tag = 179
            cell.quanTextField.text = textfieldContents[179]
            cell.checkBox.tag = 179
            cell.checkBox.selected = checkStatus[179]
            
        }
        
        if indexPath.section == 30 && indexPath.row == 1{
            cell.quanTextField.tag = 180
            cell.quanTextField.text = textfieldContents[180]
            cell.checkBox.tag = 180
            cell.checkBox.selected = checkStatus[180]
            
        }
        
        if indexPath.section == 30 && indexPath.row == 2{
            cell.quanTextField.tag = 181
            cell.quanTextField.text = textfieldContents[181]
            cell.checkBox.tag = 181
            cell.checkBox.selected = checkStatus[181]
            
        }
        
        if indexPath.section == 30 && indexPath.row == 3{
            cell.quanTextField.tag = 182
            cell.quanTextField.text = textfieldContents[182]
            cell.checkBox.tag = 182
            cell.checkBox.selected = checkStatus[182]
            
        }
        
        if indexPath.section == 30 && indexPath.row == 4{
            cell.quanTextField.tag = 183
            cell.quanTextField.text = textfieldContents[183]
            cell.checkBox.tag = 183
            cell.checkBox.selected = checkStatus[183]
            
        }
        
        if indexPath.section == 30 && indexPath.row == 5{
            cell.quanTextField.tag = 184
            cell.quanTextField.text = textfieldContents[184]
            cell.checkBox.tag = 184
            cell.checkBox.selected = checkStatus[184]
            
        }
        
        if indexPath.section == 30 && indexPath.row == 6{
            cell.quanTextField.tag = 185
            cell.quanTextField.text = textfieldContents[185]
            cell.checkBox.tag = 185
            cell.checkBox.selected = checkStatus[185]
            
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