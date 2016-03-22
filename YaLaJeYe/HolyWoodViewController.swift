//
//  HolyWoodViewController.swift
//  YallaJeye
//
//  Created by Joseph  on 1/25/16.
//  Copyright © 2016 Joseph hajjar. All rights reserved.
//

import UIKit

class HolyWoodViewController: UIViewController,UITextFieldDelegate {

    var arrowImage: UIImageView!
    var sectionTitleArray : NSMutableArray = NSMutableArray()
    var sectionContentDict : NSMutableDictionary = NSMutableDictionary()
    var arrayForBool : NSMutableArray = NSMutableArray()
    var isChecked: Bool = false
    var textfieldContents: [String] = ["","","","", "","","","","","","","","",""]
    var reset: Bool = false
    var checkStatus = [false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false]

    let allItems: [String] = ["SLICES BAKED POTATO","SLICED BAKED POTATO WITH CHEESE","FRENCH FRIES","FRENCH FRIES WITH CHEDDAR CHEESE", "FRIED POTATO WEDGES", "TWISTER FRENCH FRIES","TWISTER FRENCH FRIES WITH CHEDDAR CHEESE", "CROQUETTE POTATO","GARLIC CHEESE BREAD (5PCS)", "FRIED MOZZARELLA STICKS WITH CHILLY SAUCE (6 PCS)","CHEESE OMELETTE","MIXED FRIED SEAFOOD","SHRIMP COCKTAIL","SMOKED SCOTTISH SALMON","CHICKEN NUGGETS (5PCS)","BRESAOLA","CREAM OF MUSHROOM","SOUP OF THE DAY","CREATE YOUR OWN CREPE","COLESLAW","ORIENTAL SALAD","ROCCA SALAD","MOZZARELLA SALAD","FRESH MOZZARELLA SALAD","GREEK SALAD","TUNA SALAD","CRAB SALAD","CAESER SALAD","CHEF’S SALAD","SMOKED SALMON SALAD","PASTA SALAD","SPAGHETTI WITH TOMATO SAUCE & CHEESE","SPAGHETTI WITH WHITE SAUCE & CHEESE","CURTIS PRAWNS IN TAGLIATELLE","SPICY SPAGHETTI WITH SHRIMPS","TAGLIATELLE SALMON","NAPOLITANA PIZZA","PROSCIUTTO PIZZA","TUNA PIZZA","EXOTIC PIZZA","SPICY HOT PIZZA","HOLLYWOOD CAFÉ PIZZA","TUNA","FISH BURGER","CHICH TAOUK","CHICKEN BURGER","HAMBURGER","SPICY BURGER","CHEESE BURGER","BACON CHEESE BURGER","CROQUE MONSIEUR","THE CLUB","DOUBLE FISH BURGER","DOUBLE CHICKEN BURRGER","STEAK SANDWICH","TORNADO","DOUBLE HAMBURGER","DOUBLE CHEESE BURGER","DOUBLE BACON CHEESE BURGER","GRILLED ’HAMOUR’ FILLET","GRILLED SALMON FILLET","MIXED FRIED SEAFOOD","HOLLYWOOD CAFÉ GRILLED PRAWNS","CRISPY TEMPURA FRIED PRAWNS","SHRIMPS WITH CURRY SAUCE","CHIKEN MUSTARD SAUCE","CHICKEN RAGOUT","CHICKEN ESCALOPE","CHICKEN CORDN BLEU","ELEGANT CHICKEN","INDIAN CHIKEN CURRY","PEPPER CHICKEN STEAK","CHIKEN FAJITA","ESCALLOPE VIENNOISE","STEAK ROBERT","STEAK AU POIVRE","STEAK ROQUEFORT","CHATEAUBRIAND","GRILLED FILLET ROSSINI","BEEF STROGSNOFF","VEGETABLE SPRING ROLLS","VEGETERIAN SPAGHETTI","FISH FILLET WITH GINGER SOYA SAUCE","FISH FILLET WITH BLACK BEANS SAUCE","SWEET AND SOUR SHRIMPS","CURRY SHRIMPS IN HOT POT","SHRIMPS WITH GINGER AND ONION","NEEHUOON NOODLES CHICKEN & SHRIMPS","CANTON FRIED CRISPY NOODLES CHICKEN & SHRIMPS","SWEET AND SOUR CHICKEN","CHILI CHICKEN WITH CASHEW NUTS","CHICKEN IN SATAY SAUCE","CHICKEN WITH MIXED VEGETABLES","CURRY CHICKEN IN HOT POT","CHICKEN IN GINGER HONEY SAUCE","CURRY BEEF IN HOT POT","BEEF IN OYSTER SAUCE","BEEF WITH GREEN PEPPER IN BLACK BEANS SAUCE","BEEF CASHEW IN HOT POT","SHANGHAI BEEF NOODLES","STEAMED RICE","FRIED RICE WITH CORN","FATTOUCH","CHICH TAOUK","SESAMI BUTTER FRIED CHICKEN","BRAISED FILLET OF BEEF","BEEF TERMIDOS CINZANO SAUCE ","MINI STEAK IN BACON MUSHROOM & ONION","AMERICAN T-BONE STEAK (450G)","AMERICAN TENDERLOIN STEAK","AUSTRALIAN TENDERLOIN","ROCCA N’ROLL CHICKEN","QUINOA SALAD","LIGHT TUNA PASTA SALAD","TOFU SALAD","LIGHT HAMOUR","HOLLYWOOD SPECIAL DIET PIZZA","FUSILLI ALA ROMANO","LIGHT STEAK AU POIVRE","D-LIGHT CHICKEN","BREAST CHICKEN WITH RED WINE","STEAK MARINADE","SMOKED TURKEY","EVER SLIM CHICKEN BURGER","FIT N' BURGER","CHICKEN TORTILLAS","EDAMAME","CRISPY SPICY SALMON CRAB SALAD","CRISPY SALMO N SALAD","TUNA SALAD","SALMON SALAD","CALAMARI SALAD","SASHIMI(3PCS)->SALAMON","SASHIMI(3PCS)->TUNA","SASHIMI(3PCS)->EEL","SASHIMI(3PCS)->SCALLOPS","SASHIMI(3PCS)->HAMACHI","SASHIMI(3PCS)->WHITE FISH","SASHIMI(3PCS)->SHRIMPS","SUSHI->CRAB","SUSHI->SALMON","SUSHI->SHRIMP","SUSHI->WHITE FISH","SUSHI->SCALLOPS","SUSHI->TUNA","SUSHI->EEL","SUSHI->CRAB","SUSHI->SHRIMP TEMPURA","HOSOMAKI->SALMON","HOSOMAKI->TUNA","HOSOMAKI->SCALLOPS","HOSOMAKI->SHRIMP","HOSOMAKI->CRAB","HOSOMAKI->EEL","HOSOMAKI->SPICY SALMON","HOSOMAKI->CRISPY SALMON","TOBICO URA MAKI->SPECIAL CRAZY","TOBICO URA MAKI->SPECIAL CALIFORNIA","TOBICO URA MAKI->SHRIMP TOBICO","TOBICO URA MAKI->PHILI-SALMON","SESAME URA MAKI (3PCS)->CRAZY CALIFORNIA","SESAME URA MAKI (3PCS)->SPICY SALMON","SESAME URA MAKI (3PCS)->SALMON","SESAME URA MAKI (3PCS)->MANGO","SESAME URA MAKI (3PCS)->CALIFORNIA","SESAME URA MAKI (3PCS)->CANADIAN MAKI","SPECIAL WRAP MAKI (4PCS)->SPANISH ROLL","SPECIAL WRAP MAKI (4PCS)->URA SHRIMP","SPECIAL WRAP MAKI (4PCS)->FLYING SALMON","SPECIAL WRAP MAKI (4PCS)->SPECIAL EEL","SPECIAL WRAP MAKI (4PCS)->SPECIAL URA","SPECIAL WRAP MAKI (4PCS)->DEEP MANGO","SPECIAL WRAP MAKI (4PCS)->SKIN DEEP","SPECIAL WRAP MAKI (4PCS)->KANI MANGO","SPECIAL WRAP MAKI (4PCS)->CINEMA ROLL","SPECIAL WRAP MAKI (4PCS)->OH MY GOD","CRISPY URA MAKI (3PCS)->CRISPY SALMON","CRISPY URA MAKI (3PCS)->CRISPY TUNA","CRISPY URA MAKI (3PCS)->SPICY URA SALMON","CRISPY URA MAKI (3PCS)->KANI SALMON","CRISPY URA MAKI (3PCS)->HANAMI SALMON","CRISPY URA MAKI (3PCS)->CRISPY SCALLOPS","CRISPY URA MAKI (3PCS)->CRISPY CALIFORNIA","CRISPY URA MAKI (3PCS)->CRISPY EEL","CRISPY URA MAKI (3PCS)->CRISPY SHRIMP","CRISPY URA MAKI (3PCS)->CRISPY UNA","CRISPY URA MAKI (3PCS)->TEMPURA ROLL","TEKAMI (1PC)->CRISPY SALMON","TEKAMI (1PC)->CRISPY TUNA","TEKAMI (1PC)->CRISPY CRAB","TEKAMI (1PC)->IKURA SALMON","TEKAMI (1PC)->SAKE","SALMON SET (18 pcs)","TUNA SET (15 pcs)","U MAI SET (16 pcs)","SHIN SEN SET (17 pcs)","HOLLYWOOD SPECIAL SET (15 pcs)","CRISPY FUTO MAKI(3pcs)","CRISPY FUTO MAKI(6pcs)","SAKANA SET (29 pcs)","HOLLYWOOD  ROYAL (35 pcs)","UNA SET (23 pcs)","A.T.SPECIAL VEGGIE SET (18 pcs)","MIXED SET (9 pcs)","VOLCANO SET","CREPES OF YOUR CHOICE","CREPES WITH VANILLA ICE CREAM","SABLÉ","FONDANT AU CHOCOLAT","CHOCOLATE CAKE","CHEESE CAKE","TIRAMISSU","PROFITEROLE","ICE CREAM/DIET ICE CREAM","CHOCOLAT MOU","BANANA SPLIT","PEACH MELBA","FRUIT SALAD","CHOCOLATE TART","CREME CATALANA","STRAWBERRY CAKE","SEVEN UP CAKE","ROWNIES WITH ICE CREAM","COFFEE CAKE","FRUIT TRIFLE","CHOCOLATE AVOCADO MOUSSE"]
    
    let allPrices: [Int] = [6000,8500,6000,9000,8500,9500,11500,6500,8000,9500,8000,10000,12000,25000,7500,17000,9000,9000,10000,5500,7500,12000,11500,19000,12000,12000,18000,13000,14000,24000,12000,12000,14000,330000,22000,20000,12500,13500,14500,15500,14500,17000,8500,8000,8000,8000,9000,9000,9000,10000,9500,15000,16000,16000,17500,19000,18000,19000,19000,18500,26000,22000,36000,35000,25000,20000,20000,18500,22000,26000,20000,22000,22000,23000,30000,30000,31000,32000,30000,23000,8000,9500,16000,16000,19500,19500,19500,21000,24000,16000,17000,17000,16000,16000,19000,19000,19000,19000,20000,23000,5500,6500,8000,16000,24000,30000,31000,31000,49000,43000,38000,12000,12000,12000,12000,19500,15000,12000,28000,20000,20000,27000,12000,12000,12000,12000,8000,22000,22000,20000,20000,22000,10000,10500,12000,12000,12000,12000,12000,12000,10000,9500,11000,13000,11000,14000,9500,10000,7500,7000,9500,7000,6000,8000,7500,7500,9000,8000,8000,9000,7000,8000,7500,7500,7000,8500,11000,12000,11500,12500,11500,9500,9000,11000,12000,12000,8500,8500,9500,9500,9500,10000,7500,8500,8000,13000,8000,10000,10000,9500,10000,20000,43000,42000,42000,43000,32000,9500,19000,59000,80000,58000,35000,20000,29000,9000,11000,5500,10500,7000,8000,8000,10500,3000,10000,10000,10000,9000,7000,8000,8000,7000,10500,8000,9000,8000]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        //: Playground - noun: a place where people can play
        
       
        
        
         arrayForBool = ["0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0","0"]
        
        
        sectionTitleArray = ["STARTERS & APPETIZERS","SOUP","SALTED CREPES","SALAD CORNER","PASTA","PIZZAS","SANDWICHES","SANDWICHES PLATTERS","MAIN COURSES","CHINESE FOOD","RICE","LEBANESE FOOD","HOLLYWOOD CAFE’S SPECIALITIES","LIGHT MENU","SUCHI SALAD","SASHIMI(3PCS)","SUSHI","HOSOMAKI","TOBICO URA MAKI","SESAME URA MAKI (3PCS)","SPECIAL WRAP MAKI (4PCS)","CRISPY URA MAKI (3PCS)","TEKAMI (1PC)","SPECIAL SETS","DESSERTS","LIGHT DESSERT"]
        
        
        let tmp1 : NSArray = ["SLICES BAKED POTATO","SLICED BAKED POTATO WITH CHEESE","FRENCH FRIES","FRENCH FRIES WITH CHEDDAR CHEESE", "FRIED POTATO WEDGES", "TWISTER FRENCH FRIES","TWISTER FRENCH FRIES WITH CHEDDAR CHEESE", "CROQUETTE POTATO","GARLIC CHEESE BREAD (5PCS)", "FRIED MOZZARELLA STICKS WITH CHILLY SAUCE (6 PCS)","CHEESE OMELETTE","MIXED FRIED SEAFOOD","SHRIMP COCKTAIL","SMOKED SCOTTISH SALMON","CHICKEN NUGGETS (5PCS)","BRESAOLA"]
        
        
        let tmp1d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp2 : NSArray = ["CREAM OF MUSHROOM","SOUP OF THE DAY"]
        
        let tmp2d: NSArray = ["",""]
        
        
        let tmp3: NSArray = ["CREATE YOUR OWN CREPE"]
        
        let tmp3d: NSArray = ["(Butter, cheese, mushrooms, ham egg)"]
        
        let tmp4: NSArray = ["COLESLAW","ORIENTAL SALAD","ROCCA SALAD","MOZZARELLA SALAD","FRESH MOZZARELLA SALAD","GREEK SALAD","TUNA SALAD","CRAB SALAD","CAESER SALAD","CHEF’S SALAD","SMOKED SALMON SALAD","PASTA SALAD"]
        
        let tmp4d: NSArray = ["","lettuce,cucumber,tomato,onions with oriental sauce","Rocca,mushrooms,parmesan with French sauce","Mozzarella, tomato,olives with basil sauce","Fresh mozzarella,tomato,olives,rocca  with basil sauce","Lettuce,cucumber,tomato,onions,feta,olives with oriental sauce","Lettuce,cucumber,tomato,sweet corn,onions,tuna with mayonnaise dressing","Crab slices,avocado,lettuce with cocktail sauce","Lettuce,bacon,or chicken & parmesan cheese,with crouton & French sauce","Chicken,ham,cheese,boiled egg,sweet com,tomato,lettuce & olives with vinaigrette","Salmon,lettuce,boiled potato,rocca, pepper corn with lemon oil sauce","With chicken or tuna"]
        
        let tmp5: NSArray = ["SPAGHETTI WITH TOMATO SAUCE & CHEESE","SPAGHETTI WITH WHITE SAUCE & CHEESE","CURTIS PRAWNS IN TAGLIATELLE","SPICY SPAGHETTI WITH SHRIMPS","TAGLIATELLE SALMON"]
        
        let tmp5d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp6: NSArray = ["NAPOLITANA PIZZA","PROSCIUTTO PIZZA","TUNA PIZZA","EXOTIC PIZZA","SPICY HOT PIZZA","HOLLYWOOD CAFÉ PIZZA"]
        
        let tmp6d: NSArray = ["Cheese olives","Ham,cheese,olives","Tuna,sweet corn,olives","Ham,cheese,fresh mushrooms,tomato,onions,pineapple","Salami,cheese,tomato,onions,sweet corn,pepper,mushroom,olives","Bacon,cheese, tomato,sweet corn,onions,mushrooms,olives,eggs"]
        
        let tmp7: NSArray = ["TUNA","FISH BURGER","CHICH TAOUK","CHICKEN BURGER","HAMBURGER","SPICY BURGER","CHEESE BURGER","BACON CHEESE BURGER"]
        
        let tmp7d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        let tmp8: NSArray = ["CROQUE MONSIEUR","THE CLUB","DOUBLE FISH BURGER","DOUBLE CHICKEN BURRGER","STEAK SANDWICH","TORNADO","DOUBLE HAMBURGER","DOUBLE CHEESE BURGER","DOUBLE BACON CHEESE BURGER"]
        
        let tmp8d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
        
        let tmp9: NSArray = ["GRILLED ’HAMOUR’ FILLET","GRILLED SALMON FILLET","MIXED FRIED SEAFOOD","HOLLYWOOD CAFÉ GRILLED PRAWNS","CRISPY TEMPURA FRIED PRAWNS","SHRIMPS WITH CURRY SAUCE","CHIKEN MUSTARD SAUCE","CHICKEN RAGOUT","CHICKEN ESCALOPE","CHICKEN CORDN BLEU","ELEGANT CHICKEN","INDIAN CHIKEN CURRY","PEPPER CHICKEN STEAK","CHIKEN FAJITA","ESCALLOPE VIENNOISE","STEAK ROBERT","STEAK AU POIVRE","STEAK ROQUEFORT","CHATEAUBRIAND","GRILLED FILLET ROSSINI","BEEF STROGSNOFF"]
        
        let tmp9d: NSArray = ["Baked potato,spinach,carrots & tartar sauce","baked potato,spinach,carrots & thousand island sauce","Fish fingers,shrimps,crab,coleslaw & croquette potato","Prawns,basil,rice or French fries,vegetables & cocktail or tartar sauce ","Fried prawns with sweet chili sauce","Cooked shrimps with curry sauce served with rice","Diced chicken,mushroom & mustard sauce with rice","Diced chicken with mushroom & cream sauce with rice","Deep fried chicken fillet with fries & coleslaw","Chicken breast stuffed with ham & cheese,fries,coleslaw,tomato sauce","Chicken fillet,bacon with vegetables & fries","Diced chicken sauté with white & Indian curry","Grilled chicken fillet,fries & vegetables","","Deep fried steak,fries & coleslaw ","2 slices of grilled fillet,fries,vegetables & mustard sauce","Grilled beef fillet,fries,vegetables & black pepper sauce","Grilled beef fillet,fries,vegetables & Roquefort cheese sauce","Grilled beef fillet with parsley-butter,fries,vegetables & black pepper sauce ","Fillet with fries,vegetables,red wine & mushroom sauce ","Sliced beef mixed with stroganoff cream sauce with rice"]
        
        
        
        let tmp10: NSArray = ["VEGETABLE SPRING ROLLS","VEGETERIAN SPAGHETTI","FISH FILLET WITH GINGER SOYA SAUCE","FISH FILLET WITH BLACK BEANS SAUCE","SWEET AND SOUR SHRIMPS","CURRY SHRIMPS IN HOT POT","SHRIMPS WITH GINGER AND ONION","NEEHUOON NOODLES CHICKEN & SHRIMPS","CANTON FRIED CRISPY NOODLES CHICKEN & SHRIMPS","SWEET AND SOUR CHICKEN","CHILI CHICKEN WITH CASHEW NUTS","CHICKEN IN SATAY SAUCE","CHICKEN WITH MIXED VEGETABLES","CURRY CHICKEN IN HOT POT","CHICKEN IN GINGER HONEY SAUCE","CURRY BEEF IN HOT POT","BEEF IN OYSTER SAUCE","BEEF WITH GREEN PEPPER IN BLACK BEANS SAUCE","BEEF CASHEW IN HOT POT","SHANGHAI BEEF NOODLES"]
        
        let tmp10d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp11: NSArray = ["STEAMED RICE","FRIED RICE WITH CORN"]
        
        let tmp11d: NSArray = ["",""]
        
        let tmp12: NSArray = ["FATTOUCH","CHICH TAOUK"]
        
        let tmp12d: NSArray = ["",""]
        
        let tmp13: NSArray = ["SESAMI BUTTER FRIED CHICKEN","BRAISED FILLET OF BEEF","BEEF TERMIDOS CINZANO SAUCE ","MINI STEAK IN BACON MUSHROOM & ONION","AMERICAN T-BONE STEAK (450G)","AMERICAN TENDERLOIN STEAK","AUSTRALIAN TENDERLOIN"]
        
        let tmp13d: NSArray = ["With Teriyaki Sauce","","With boiled vegetables and sauté potatoes","With white wine sauce","","","",""]
        
        let tmp14: NSArray = ["ROCCA N’ROLL CHICKEN","QUINOA SALAD","LIGHT TUNA PASTA SALAD","TOFU SALAD","LIGHT HAMOUR","HOLLYWOOD SPECIAL DIET PIZZA","FUSILLI ALA ROMANO","LIGHT STEAK AU POIVRE","D-LIGHT CHICKEN","BREAST CHICKEN WITH RED WINE","STEAK MARINADE","SMOKED TURKEY","EVER SLIM CHICKEN BURGER","FIT N' BURGER","CHICKEN TORTILLAS"]
        
        let tmp14d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        //Sushi
        
        let tmp15: NSArray = ["EDAMAME","CRISPY SPICY SALMON CRAB SALAD","CRISPY SALMO N SALAD","TUNA SALAD","SALMON SALAD","CALAMARI SALAD"]
        
        let tmp15d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        let tmp16: NSArray = ["SALAMON","TUNA","EEL","SCALLOPS","HAMACHI","WHITE FISH","SHRIMPS","CRAB"]
        let tmp16d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp17: NSArray = ["SALMON","SHRIMP","WHITE FISH","SCALLOPS","TUNA","EEL","CRAB","SHRIMP TEMPURA"]
        let tmp17d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp18: NSArray = ["SALMON","TUNA","SCALLOPS","SHRIMP","CRAB","EEL","SPICY SALMON","CRISPY SALMON"]
        let tmp18d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp19: NSArray = ["SPECIAL CRAZY","SPECIAL CALIFORNIA","SHRIMP TOBICO","PHILI-SALMON"]
        let tmp19d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp20: NSArray = ["CRAZY CALIFORNIA","SPICY SALMON","SALMON","MANGO","CALIFORNIA","CANADIAN MAKI"]
        let tmp20d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        let tmp21: NSArray = ["SPANISH ROLL","URA SHRIMP","FLYING SALMON","SPECIAL EEL","SPECIAL URA","DEEP MANGO","SKIN DEEP","KANI MANGO","CINEMA ROLL","OH MY GOD"]
        let tmp21d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp22: NSArray = ["CRISPY SALMON","CRISPY TUNA","SPICY URA SALMON","KANI SALMON","HANAMI SALMON","CRISPY SCALLOPS","CRISPY CALIFORNIA","CRISPY EEL","CRISPY SHRIMP","CRISPY UNA","TEMPURA ROLL"]
        let tmp22d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp23: NSArray = ["CRISPY SALMON","CRISPY TUNA","CRISPY CRAB","IKURA SALMON","SAKE"]
        let tmp23d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp24: NSArray = ["SALMON SET (18 pcs)","TUNA SET (15 pcs)","U MAI SET (16 pcs)","SHIN SEN SET (17 pcs)","HOLLYWOOD SPECIAL SET (15 pcs)","CRISPY FUTO MAKI(3pcs)","CRISPY FUTO MAKI(6pcs)","SAKANA SET (29 pcs)","HOLLYWOOD  ROYAL (35 pcs)","UNA SET (23 pcs)","A.T.SPECIAL VEGGIE SET (18 pcs)","MIXED SET (9 pcs)","VOLCANO SET"]
        let tmp24d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp25: NSArray = ["CREPES OF YOUR CHOICE","CREPES WITH VANILLA ICE CREAM","SABLÉ","FONDANT AU CHOCOLAT","CHOCOLATE CAKE","CHEESE CAKE","TIRAMISSU","PROFITEROLE","ICE CREAM/DIET ICE CREAM","CHOCOLAT MOU","BANANA SPLIT","PEACH MELBA","FRUIT SALAD","CHOCOLATE TART","CREME CATALANA","STRAWBERRY CAKE","SEVEN UP CAKE","ROWNIES WITH ICE CREAM","COFFEE CAKE"]
        let tmp25d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        let tmp26: NSArray = ["FRUIT TRIFLE","CHOCOLATE AVOCADO MOUSSE"]
        let tmp26d: NSArray = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        var totalC = 0
        var totalP = 0
        
        
        
        let tmp1Prices: NSArray = [6000,8500,6000,9000,8500,9500,11500,6500,8000,9500,8000,10000,12000,25000,7500,17000]
        print(tmp1.count)
        print(tmp1Prices.count)
        totalC = totalC + tmp1.count
        totalP = totalP + tmp1Prices.count
        
        //16
        
        let tmp2Prices: NSArray = [9000,9000]
        print(tmp2.count)
        print(tmp2Prices.count)
        totalC = totalC + tmp2.count
        totalP = totalP + tmp2.count
        
        //18
        
        let tmp3Prices: NSArray = [10000]
        
        print(tmp3.count)
        print(tmp3Prices.count)
        totalC = totalC + tmp3.count
        totalP = totalP + tmp3Prices.count
        
        //19
        
        
        let tmp4Prices: NSArray = [5500,7500,12000,11500,19000,12000,12000,18000,13000,14000,24000,12000]
        
        print(tmp4.count)
        print(tmp4Prices.count)
        print(tmp4d.count)
        totalC = totalC + tmp4.count
        totalP = totalP + tmp4Prices.count
        
        //31
        
        let tmp5Prices: NSArray = [12000,14000,330000,22000,20000]
        
        print(tmp5.count)
        print(tmp5Prices.count)
        totalC = totalC + tmp5.count
        totalP = totalP + tmp5Prices.count
        
        //36
        
        let tmp6Prices: NSArray = [12500,13500,14500,15500,14500,17000]
        print(tmp6.count)
        print(tmp6Prices.count)
        totalC = totalC + tmp6.count
        totalP = totalP + tmp6Prices.count
        
        //42
        
        
        let tmp7Prices: NSArray = [8500,8000,8000,8000,9000,9000,9000,10000]
        print(tmp7.count)
        print(tmp7Prices.count)
        totalC = totalC + tmp7.count
        totalP = totalP + tmp7Prices.count
        
        //50
        
        let tmp8Prices: NSArray = [9500,15000,16000,16000,17500,19000,18000,19000,19000]
        print(tmp8.count)
        print(tmp8Prices.count)
        totalC = totalC + tmp8.count
        totalP = totalP + tmp8Prices.count
        
        //59
        
        let tmp9Prices: NSArray = [18500,26000,22000,36000,35000,25000,20000,20000,18500,22000,26000,20000,22000,22000,23000,30000,30000,31000,32000,30000,23000]
        
        print(tmp9.count)
        print(tmp9Prices.count)
        print(tmp9d.count)
        totalC = totalC + tmp9.count
        totalP = totalP + tmp9Prices.count
        
        //80
        
        let tmp10Prices: NSArray = [8000,9500,16000,16000,19500,19500,19500,21000,24000,16000,17000,17000,16000,16000,19000,19000,19000,19000,20000,23000]
        
        print(tmp10.count)
        print(tmp10Prices.count)
        totalC = totalC + tmp10.count
        totalP = totalP + tmp10Prices.count
        
        //100
        
        let tmp11Prices: NSArray = [5500,6500]
        
        print(tmp11.count)
        print(tmp11Prices.count)
        totalC = totalC + tmp11.count
        totalP = totalP + tmp11Prices.count
        
        //102
        
        
        let tmp12Prices: NSArray = [8000,16000]
        
        print(tmp12.count)
        print(tmp12Prices.count)
        totalC = totalC + tmp12.count
        totalP = totalP + tmp12Prices.count
        
        //104
        
        let tmp13Prices: NSArray = [24000,30000,31000,31000,49000,43000,38000]
        
        print(tmp13.count)
        print(tmp13Prices.count)
        totalC = totalC + tmp13.count
        totalP = totalP + tmp13Prices.count
        
        // 111
        
        let tmp14Prices: NSArray = [12000,12000,12000,12000,19500,15000,12000,28000,20000,20000,27000,12000,12000,12000,12000]
        
        
        print(tmp14.count)
        print(tmp14Prices.count)
        totalC = totalC + tmp14.count
        totalP = totalP + tmp14Prices.count
        
        //126
        
        let tmp15Prices: NSArray = [8000,22000,22000,20000,20000,22000]
        
        print(tmp15.count)
        print(tmp15Prices.count)
        totalC = totalC + tmp15.count
        totalP = totalP + tmp15Prices.count
        
        //132
        
        let tmp16Prices: NSArray = [10000,10500,12000,12000,12000,12000,12000,12000]
        
        print(tmp16.count)
        print(tmp16Prices.count)
        totalC = totalC + tmp16.count
        totalP = totalP + tmp16Prices.count
        
        //140
        
        let tmp17Prices: NSArray = [10000,9500,11000,13000,11000,14000,9500,10000]
        
        print(tmp17.count)
        print(tmp17Prices.count)
        totalC = totalC + tmp17.count
        totalP = totalP + tmp17Prices.count
        
        //148
        
        
        let tmp18Prices: NSArray = [7500,7000,9500,7000,6000,8000,7500,7500]
        
        print(tmp18.count)
        print(tmp18Prices.count)
        totalC = totalC + tmp18.count
        totalP = totalP + tmp18Prices.count
        
        //156
        
        let tmp19Prices: NSArray = [9000,8000,8000,9000]
        
        print(tmp19.count)
        print(tmp19Prices.count)
        totalC = totalC + tmp19.count
        totalP = totalP + tmp19Prices.count
        
        
        //160
        
        let tmp20Prices: NSArray = [7000,8000,7500,7500,7000,8500]
        
        print(tmp20.count)
        print(tmp20Prices.count)
        totalC = totalC + tmp20.count
        totalP = totalP + tmp20Prices.count
        
        //166
        
        let tmp21Prices: NSArray = [11000,12000,11500,12500,11500,9500,9000,11000,12000,12000]
        
        
        print(tmp21.count)
        print(tmp21Prices.count)
        totalC = totalC + tmp21.count
        totalP = totalP + tmp21Prices.count
        
        //176
        
        
        let tmp22Prices: NSArray = [8500,8500,9500,9500,9500,10000,7500,8500,8000,13000,8000]
        
        print(tmp22.count)
        print(tmp22Prices.count)
        totalC = totalC + tmp22.count
        totalP = totalP + tmp22Prices.count
        
        //187
        
        
        let tmp23Prices: NSArray = [10000,10000,9500,10000,20000]
        
        
        print(tmp23.count)
        print(tmp23Prices.count)
        totalC = totalC + tmp23.count
        totalP = totalP + tmp23Prices.count
        
        
        //192
        
        
        let tmp24Prices: NSArray = [43000,42000,42000,43000,32000,9500,19000,59000,80000,58000,35000,20000,29000]
        
        print(tmp24.count)
        print(tmp24Prices.count)
        totalC = totalC + tmp24.count
        totalP = totalP + tmp24Prices.count
        
        //205
        
        let tmp25Prices: NSArray = [9000,11000,5500,10500,7000,8000,8000,10500,3000,10000,10000,10000,9000,7000,8000,8000,7000,10500,8000]
        
        print(tmp25.count)
        print(tmp25Prices.count)
        totalC = totalC + tmp25.count
        totalP = totalP + tmp25Prices.count
        
        //224
        
        
        let tmp26Prices: NSArray = [9000,8000]
        
        
        print(tmp26.count)
        print(tmp26Prices.count)
        totalC = totalC + tmp26.count
        totalP = totalP + tmp26Prices.count
        
        print(sectionTitleArray.count)
        print(allItems.count)
        print(allPrices.count)
        
        //226
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
        
        tableView.allowsSelection = false
        
         textfieldContents = ["","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","",""]
        
        
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
        NSUserDefaults.standardUserDefaults().setObject("HollyWood", forKey: "restoName")
        
        
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
        if indexPath.section == 2 && indexPath.row == 0{
            cell.quanTextField.tag = 18
            cell.quanTextField.text = textfieldContents[18]
            cell.checkBox.tag = 18
            cell.checkBox.selected = checkStatus[18]
            
        }
        if indexPath.section == 3 && indexPath.row == 0{
            cell.quanTextField.tag = 19
            cell.quanTextField.text = textfieldContents[19]
            cell.checkBox.tag = 19
            cell.checkBox.selected = checkStatus[19]
            
        }
        if indexPath.section == 3 && indexPath.row == 1{
            cell.quanTextField.tag = 20
            cell.quanTextField.text = textfieldContents[20]
            cell.checkBox.tag = 20
            cell.checkBox.selected = checkStatus[20]
            
        }
        if indexPath.section == 3 && indexPath.row == 2{
            cell.quanTextField.tag = 21
            cell.quanTextField.text = textfieldContents[21]
            cell.checkBox.tag = 21
            cell.checkBox.selected = checkStatus[21]
            
        }
        if indexPath.section == 3 && indexPath.row == 3{
            cell.quanTextField.tag = 22
            cell.quanTextField.text = textfieldContents[22]
            cell.checkBox.tag = 22
            cell.checkBox.selected = checkStatus[22]
            
        }
        if indexPath.section == 3 && indexPath.row == 4{
            cell.quanTextField.tag = 23
            cell.quanTextField.text = textfieldContents[23]
            cell.checkBox.tag = 23
            cell.checkBox.selected = checkStatus[23]
            
        }
        if indexPath.section == 3 && indexPath.row == 5{
            cell.quanTextField.tag = 24
            cell.quanTextField.text = textfieldContents[24]
            cell.checkBox.tag = 24
            cell.checkBox.selected = checkStatus[24]
            
        }
        if indexPath.section == 3 && indexPath.row == 6{
            cell.quanTextField.tag = 25
            cell.quanTextField.text = textfieldContents[25]
            cell.checkBox.tag = 25
            cell.checkBox.selected = checkStatus[25]
            
        }
        if indexPath.section == 3 && indexPath.row == 7{
            cell.quanTextField.tag = 26
            cell.quanTextField.text = textfieldContents[26]
            cell.checkBox.tag = 26
            cell.checkBox.selected = checkStatus[26]
            
        }
        if indexPath.section == 3 && indexPath.row == 8{
            cell.quanTextField.tag = 27
            cell.quanTextField.text = textfieldContents[27]
            cell.checkBox.tag = 27
            cell.checkBox.selected = checkStatus[27]
            
        }
        if indexPath.section == 3 && indexPath.row == 9{
            cell.quanTextField.tag = 28
            cell.quanTextField.text = textfieldContents[28]
            cell.checkBox.tag = 28
            cell.checkBox.selected = checkStatus[28]
            
        }
        if indexPath.section == 3 && indexPath.row == 10{
            cell.quanTextField.tag = 29
            cell.quanTextField.text = textfieldContents[29]
            cell.checkBox.tag = 29
            cell.checkBox.selected = checkStatus[29]
            
        }
        if indexPath.section == 3 && indexPath.row == 11{
            cell.quanTextField.tag = 30
            cell.quanTextField.text = textfieldContents[30]
            cell.checkBox.tag = 30
            cell.checkBox.selected = checkStatus[30]
            
        }
        if indexPath.section == 4 && indexPath.row == 0{
            cell.quanTextField.tag = 31
            cell.quanTextField.text = textfieldContents[31]
            cell.checkBox.tag = 31
            cell.checkBox.selected = checkStatus[31]
            
        }
        if indexPath.section == 4 && indexPath.row == 1{
            cell.quanTextField.tag = 32
            cell.quanTextField.text = textfieldContents[32]
            cell.checkBox.tag = 32
            cell.checkBox.selected = checkStatus[32]
            
        }
        if indexPath.section == 4 && indexPath.row == 2{
            cell.quanTextField.tag = 33
            cell.quanTextField.text = textfieldContents[33]
            cell.checkBox.tag = 33
            cell.checkBox.selected = checkStatus[33]
            
        }
        if indexPath.section == 4 && indexPath.row == 3{
            cell.quanTextField.tag = 34
            cell.quanTextField.text = textfieldContents[34]
            cell.checkBox.tag = 34
            cell.checkBox.selected = checkStatus[34]
            
        }
        if indexPath.section == 4 && indexPath.row == 4{
            cell.quanTextField.tag = 35
            cell.quanTextField.text = textfieldContents[35]
            cell.checkBox.tag = 35
            cell.checkBox.selected = checkStatus[35]
            
        }
        if indexPath.section == 5 && indexPath.row == 0{
            cell.quanTextField.tag = 36
            cell.quanTextField.text = textfieldContents[36]
            cell.checkBox.tag = 36
            cell.checkBox.selected = checkStatus[36]
            
        }
        if indexPath.section == 5 && indexPath.row == 1{
            cell.quanTextField.tag = 37
            cell.quanTextField.text = textfieldContents[37]
            cell.checkBox.tag = 37
            cell.checkBox.selected = checkStatus[37]
            
        }
        if indexPath.section == 5 && indexPath.row == 2{
            cell.quanTextField.tag = 38
            cell.quanTextField.text = textfieldContents[38]
            cell.checkBox.tag = 38
            cell.checkBox.selected = checkStatus[38]
            
        }
        if indexPath.section == 5 && indexPath.row == 3{
            cell.quanTextField.tag = 39
            cell.quanTextField.text = textfieldContents[39]
            cell.checkBox.tag = 39
            cell.checkBox.selected = checkStatus[39]
            
        }
        if indexPath.section == 5 && indexPath.row == 4{
            cell.quanTextField.tag = 40
            cell.quanTextField.text = textfieldContents[40]
            cell.checkBox.tag = 40
            cell.checkBox.selected = checkStatus[40]
            
        }
        if indexPath.section == 5 && indexPath.row == 5{
            cell.quanTextField.tag = 41
            cell.quanTextField.text = textfieldContents[41]
            cell.checkBox.tag = 41
            cell.checkBox.selected = checkStatus[41]
            
        }
        if indexPath.section == 6 && indexPath.row == 0{
            cell.quanTextField.tag = 42
            cell.quanTextField.text = textfieldContents[42]
            cell.checkBox.tag = 42
            cell.checkBox.selected = checkStatus[42]
            
        }
        if indexPath.section == 6 && indexPath.row == 1{
            cell.quanTextField.tag = 43
            cell.quanTextField.text = textfieldContents[43]
            cell.checkBox.tag = 43
            cell.checkBox.selected = checkStatus[43]
            
        }
        if indexPath.section == 6 && indexPath.row == 2{
            cell.quanTextField.tag = 44
            cell.quanTextField.text = textfieldContents[44]
            cell.checkBox.tag = 44
            cell.checkBox.selected = checkStatus[44]
            
        }
        if indexPath.section == 6 && indexPath.row == 3{
            cell.quanTextField.tag = 45
            cell.quanTextField.text = textfieldContents[45]
            cell.checkBox.tag = 45
            cell.checkBox.selected = checkStatus[45]
            
        }
        if indexPath.section == 6 && indexPath.row == 4{
            cell.quanTextField.tag = 46
            cell.quanTextField.text = textfieldContents[46]
            cell.checkBox.tag = 46
            cell.checkBox.selected = checkStatus[46]
            
        }
        if indexPath.section == 6 && indexPath.row == 5{
            cell.quanTextField.tag = 47
            cell.quanTextField.text = textfieldContents[47]
            cell.checkBox.tag = 47
            cell.checkBox.selected = checkStatus[47]
            
        }
        if indexPath.section == 6 && indexPath.row == 6{
            cell.quanTextField.tag = 48
            cell.quanTextField.text = textfieldContents[48]
            cell.checkBox.tag = 48
            cell.checkBox.selected = checkStatus[48]
            
        }
        if indexPath.section == 6 && indexPath.row == 7{
            cell.quanTextField.tag = 49
            cell.quanTextField.text = textfieldContents[49]
            cell.checkBox.tag = 49
            cell.checkBox.selected = checkStatus[49]
            
        }
        if indexPath.section == 7 && indexPath.row == 0{
            cell.quanTextField.tag = 50
            cell.quanTextField.text = textfieldContents[50]
            cell.checkBox.tag = 50
            cell.checkBox.selected = checkStatus[50]
            
        }
        if indexPath.section == 7 && indexPath.row == 1{
            cell.quanTextField.tag = 51
            cell.quanTextField.text = textfieldContents[51]
            cell.checkBox.tag = 51
            cell.checkBox.selected = checkStatus[51]
            
        }
        if indexPath.section == 7 && indexPath.row == 2{
            cell.quanTextField.tag = 52
            cell.quanTextField.text = textfieldContents[52]
            cell.checkBox.tag = 52
            cell.checkBox.selected = checkStatus[52]
            
        }
        if indexPath.section == 7 && indexPath.row == 3{
            cell.quanTextField.tag = 53
            cell.quanTextField.text = textfieldContents[53]
            cell.checkBox.tag = 53
            cell.checkBox.selected = checkStatus[53]
            
        }
        if indexPath.section == 7 && indexPath.row == 4{
            cell.quanTextField.tag = 54
            cell.quanTextField.text = textfieldContents[54]
            cell.checkBox.tag = 54
            cell.checkBox.selected = checkStatus[54]
            
        }
        if indexPath.section == 7 && indexPath.row == 5{
            cell.quanTextField.tag = 55
            cell.quanTextField.text = textfieldContents[55]
            cell.checkBox.tag = 55
            cell.checkBox.selected = checkStatus[55]
            
        }
        if indexPath.section == 7 && indexPath.row == 6{
            cell.quanTextField.tag = 56
            cell.quanTextField.text = textfieldContents[56]
            cell.checkBox.tag = 56
            cell.checkBox.selected = checkStatus[56]
            
        }
        if indexPath.section == 7 && indexPath.row == 7{
            cell.quanTextField.tag = 57
            cell.quanTextField.text = textfieldContents[57]
            cell.checkBox.tag = 57
            cell.checkBox.selected = checkStatus[57]
            
        }
        if indexPath.section == 7 && indexPath.row == 8{
            cell.quanTextField.tag = 58
            cell.quanTextField.text = textfieldContents[58]
            cell.checkBox.tag = 58
            cell.checkBox.selected = checkStatus[58]
            
        }
        if indexPath.section == 8 && indexPath.row == 0{
            cell.quanTextField.tag = 59
            cell.quanTextField.text = textfieldContents[59]
            cell.checkBox.tag = 59
            cell.checkBox.selected = checkStatus[59]
            
        }
        if indexPath.section == 8 && indexPath.row == 1{
            cell.quanTextField.tag = 60
            cell.quanTextField.text = textfieldContents[60]
            cell.checkBox.tag = 60
            cell.checkBox.selected = checkStatus[60]
            
        }
        if indexPath.section == 8 && indexPath.row == 2{
            cell.quanTextField.tag = 61
            cell.quanTextField.text = textfieldContents[61]
            cell.checkBox.tag = 61
            cell.checkBox.selected = checkStatus[61]
            
        }
        if indexPath.section == 8 && indexPath.row == 3{
            cell.quanTextField.tag = 62
            cell.quanTextField.text = textfieldContents[62]
            cell.checkBox.tag = 62
            cell.checkBox.selected = checkStatus[62]
            
        }
        if indexPath.section == 8 && indexPath.row == 4{
            cell.quanTextField.tag = 63
            cell.quanTextField.text = textfieldContents[63]
            cell.checkBox.tag = 63
            cell.checkBox.selected = checkStatus[63]
            
        }
        if indexPath.section == 8 && indexPath.row == 5{
            cell.quanTextField.tag = 64
            cell.quanTextField.text = textfieldContents[64]
            cell.checkBox.tag = 64
            cell.checkBox.selected = checkStatus[64]
            
        }
        if indexPath.section == 8 && indexPath.row == 6{
            cell.quanTextField.tag = 65
            cell.quanTextField.text = textfieldContents[65]
            cell.checkBox.tag = 65
            cell.checkBox.selected = checkStatus[65]
            
        }
        if indexPath.section == 8 && indexPath.row == 7{
            cell.quanTextField.tag = 66
            cell.quanTextField.text = textfieldContents[66]
            cell.checkBox.tag = 66
            cell.checkBox.selected = checkStatus[66]
            
        }
        if indexPath.section == 8 && indexPath.row == 8{
            cell.quanTextField.tag = 67
            cell.quanTextField.text = textfieldContents[67]
            cell.checkBox.tag = 67
            cell.checkBox.selected = checkStatus[67]
            
        }
        if indexPath.section == 8 && indexPath.row == 9{
            cell.quanTextField.tag = 68
            cell.quanTextField.text = textfieldContents[68]
            cell.checkBox.tag = 68
            cell.checkBox.selected = checkStatus[68]
            
        }
        if indexPath.section == 8 && indexPath.row == 10{
            cell.quanTextField.tag = 69
            cell.quanTextField.text = textfieldContents[69]
            cell.checkBox.tag = 69
            cell.checkBox.selected = checkStatus[69]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 11{
            cell.quanTextField.tag = 70
            cell.quanTextField.text = textfieldContents[70]
            cell.checkBox.tag = 70
            cell.checkBox.selected = checkStatus[70]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 12{
            cell.quanTextField.tag = 71
            cell.quanTextField.text = textfieldContents[71]
            cell.checkBox.tag = 71
            cell.checkBox.selected = checkStatus[71]
            
        }
        
        
        if indexPath.section == 8 && indexPath.row == 13{
            cell.quanTextField.tag = 72
            cell.quanTextField.text = textfieldContents[72]
            cell.checkBox.tag = 72
            cell.checkBox.selected = checkStatus[72]
            
        }
        
        
        if indexPath.section == 8 && indexPath.row == 14{
            cell.quanTextField.tag = 73
            cell.quanTextField.text = textfieldContents[73]
            cell.checkBox.tag = 73
            cell.checkBox.selected = checkStatus[73]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 15{
            cell.quanTextField.tag = 74
            cell.quanTextField.text = textfieldContents[74]
            cell.checkBox.tag = 74
            cell.checkBox.selected = checkStatus[74]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 16{
            cell.quanTextField.tag = 75
            cell.quanTextField.text = textfieldContents[75]
            cell.checkBox.tag = 75
            cell.checkBox.selected = checkStatus[75]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 17{
            cell.quanTextField.tag = 76
            cell.quanTextField.text = textfieldContents[76]
            cell.checkBox.tag = 76
            cell.checkBox.selected = checkStatus[76]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 18{
            cell.quanTextField.tag = 77
            cell.quanTextField.text = textfieldContents[77]
            cell.checkBox.tag = 77
            cell.checkBox.selected = checkStatus[77]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 19{
            cell.quanTextField.tag = 78
            cell.quanTextField.text = textfieldContents[78]
            cell.checkBox.tag = 78
            cell.checkBox.selected = checkStatus[78]
            
        }
        
        if indexPath.section == 8 && indexPath.row == 20{
            cell.quanTextField.tag = 79
            cell.quanTextField.text = textfieldContents[79]
            cell.checkBox.tag = 79
            cell.checkBox.selected = checkStatus[79]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 0{
            cell.quanTextField.tag = 80
            cell.quanTextField.text = textfieldContents[80]
            cell.checkBox.tag = 80
            cell.checkBox.selected = checkStatus[80]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 1{
            cell.quanTextField.tag = 81
            cell.quanTextField.text = textfieldContents[81]
            cell.checkBox.tag = 81
            cell.checkBox.selected = checkStatus[81]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 2{
            cell.quanTextField.tag = 82
            cell.quanTextField.text = textfieldContents[82]
            cell.checkBox.tag = 82
            cell.checkBox.selected = checkStatus[82]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 3{
            cell.quanTextField.tag = 83
            cell.quanTextField.text = textfieldContents[83]
            cell.checkBox.tag = 83
            cell.checkBox.selected = checkStatus[83]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 4{
            cell.quanTextField.tag = 84
            cell.quanTextField.text = textfieldContents[84]
            cell.checkBox.tag = 84
            cell.checkBox.selected = checkStatus[84]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 5{
            cell.quanTextField.tag = 85
            cell.quanTextField.text = textfieldContents[85]
            cell.checkBox.tag = 85
            cell.checkBox.selected = checkStatus[85]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 6{
            cell.quanTextField.tag = 86
            cell.quanTextField.text = textfieldContents[86]
            cell.checkBox.tag = 86
            cell.checkBox.selected = checkStatus[86]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 7{
            cell.quanTextField.tag = 87
            cell.quanTextField.text = textfieldContents[87]
            cell.checkBox.tag = 87
            cell.checkBox.selected = checkStatus[87]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 8{
            cell.quanTextField.tag = 88
            cell.quanTextField.text = textfieldContents[88]
            cell.checkBox.tag = 88
            cell.checkBox.selected = checkStatus[88]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 9{
            cell.quanTextField.tag = 89
            cell.quanTextField.text = textfieldContents[89]
            cell.checkBox.tag = 89
            cell.checkBox.selected = checkStatus[89]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 10{
            cell.quanTextField.tag = 90
            cell.quanTextField.text = textfieldContents[90]
            cell.checkBox.tag = 90
            cell.checkBox.selected = checkStatus[90]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 11{
            cell.quanTextField.tag = 91
            cell.quanTextField.text = textfieldContents[91]
            cell.checkBox.tag = 91
            cell.checkBox.selected = checkStatus[91]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 12{
            cell.quanTextField.tag = 92
            cell.quanTextField.text = textfieldContents[92]
            cell.checkBox.tag = 92
            cell.checkBox.selected = checkStatus[92]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 13{
            cell.quanTextField.tag = 93
            cell.quanTextField.text = textfieldContents[93]
            cell.checkBox.tag = 93
            cell.checkBox.selected = checkStatus[93]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 14{
            cell.quanTextField.tag = 94
            cell.quanTextField.text = textfieldContents[94]
            cell.checkBox.tag = 94
            cell.checkBox.selected = checkStatus[94]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 15{
            cell.quanTextField.tag = 95
            cell.quanTextField.text = textfieldContents[95]
            cell.checkBox.tag = 95
            cell.checkBox.selected = checkStatus[95]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 16{
            cell.quanTextField.tag = 96
            cell.quanTextField.text = textfieldContents[96]
            cell.checkBox.tag = 96
            cell.checkBox.selected = checkStatus[96]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 17{
            cell.quanTextField.tag = 97
            cell.quanTextField.text = textfieldContents[97]
            cell.checkBox.tag = 97
            cell.checkBox.selected = checkStatus[97]
            
        }
        
        if indexPath.section == 9 && indexPath.row == 18{
            cell.quanTextField.tag = 98
            cell.quanTextField.text = textfieldContents[98]
            cell.checkBox.tag = 98
            cell.checkBox.selected = checkStatus[98]
            
        }
        
        
        if indexPath.section == 9 && indexPath.row == 19{
            cell.quanTextField.tag = 99
            cell.quanTextField.text = textfieldContents[99]
            cell.checkBox.tag = 99
            cell.checkBox.selected = checkStatus[99]
            
        }
        
        if indexPath.section == 10 && indexPath.row == 0{
            cell.quanTextField.tag = 100
            cell.quanTextField.text = textfieldContents[100]
            cell.checkBox.tag = 100
            cell.checkBox.selected = checkStatus[100]
            
        }
        
        if indexPath.section == 10 && indexPath.row == 1{
            cell.quanTextField.tag = 101
            cell.quanTextField.text = textfieldContents[101]
            cell.checkBox.tag = 101
            cell.checkBox.selected = checkStatus[101]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 0{
            cell.quanTextField.tag = 102
            cell.quanTextField.text = textfieldContents[102]
            cell.checkBox.tag = 102
            cell.checkBox.selected = checkStatus[102]
            
        }
        
        if indexPath.section == 11 && indexPath.row == 1{
            cell.quanTextField.tag = 103
            cell.quanTextField.text = textfieldContents[103]
            cell.checkBox.tag = 103
            cell.checkBox.selected = checkStatus[103]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 0{
            cell.quanTextField.tag = 104
            cell.quanTextField.text = textfieldContents[104]
            cell.checkBox.tag = 104
            cell.checkBox.selected = checkStatus[104]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 1{
            cell.quanTextField.tag = 105
            cell.quanTextField.text = textfieldContents[105]
            cell.checkBox.tag = 105
            cell.checkBox.selected = checkStatus[105]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 2{
            cell.quanTextField.tag = 106
            cell.quanTextField.text = textfieldContents[106]
            cell.checkBox.tag = 106
            cell.checkBox.selected = checkStatus[106]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 3{
            cell.quanTextField.tag = 107
            cell.quanTextField.text = textfieldContents[107]
            cell.checkBox.tag = 107
            cell.checkBox.selected = checkStatus[107]
            
        }
        
        
        if indexPath.section == 12 && indexPath.row == 4{
            cell.quanTextField.tag = 108
            cell.quanTextField.text = textfieldContents[108]
            cell.checkBox.tag = 108
            cell.checkBox.selected = checkStatus[108]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 5{
            cell.quanTextField.tag = 109
            cell.quanTextField.text = textfieldContents[109]
            cell.checkBox.tag = 109
            cell.checkBox.selected = checkStatus[109]
            
        }
        
        if indexPath.section == 12 && indexPath.row == 6{
            cell.quanTextField.tag = 110
            cell.quanTextField.text = textfieldContents[110]
            cell.checkBox.tag = 110
            cell.checkBox.selected = checkStatus[110]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 0{
            cell.quanTextField.tag = 111
            cell.quanTextField.text = textfieldContents[111]
            cell.checkBox.tag = 111
            cell.checkBox.selected = checkStatus[111]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 1{
            cell.quanTextField.tag = 112
            cell.quanTextField.text = textfieldContents[112]
            cell.checkBox.tag = 112
            cell.checkBox.selected = checkStatus[112]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 2{
            cell.quanTextField.tag = 113
            cell.quanTextField.text = textfieldContents[113]
            cell.checkBox.tag = 113
            cell.checkBox.selected = checkStatus[113]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 3{
            cell.quanTextField.tag = 114
            cell.quanTextField.text = textfieldContents[114]
            cell.checkBox.tag = 114
            cell.checkBox.selected = checkStatus[114]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 4{
            cell.quanTextField.tag = 115
            cell.quanTextField.text = textfieldContents[115]
            cell.checkBox.tag = 115
            cell.checkBox.selected = checkStatus[115]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 5{
            cell.quanTextField.tag = 116
            cell.quanTextField.text = textfieldContents[116]
            cell.checkBox.tag = 116
            cell.checkBox.selected = checkStatus[116]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 6{
            cell.quanTextField.tag = 117
            cell.quanTextField.text = textfieldContents[117]
            cell.checkBox.tag = 117
            cell.checkBox.selected = checkStatus[117]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 7{
            cell.quanTextField.tag = 118
            cell.quanTextField.text = textfieldContents[118]
            cell.checkBox.tag = 118
            cell.checkBox.selected = checkStatus[118]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 8{
            cell.quanTextField.tag = 119
            cell.quanTextField.text = textfieldContents[119]
            cell.checkBox.tag = 119
            cell.checkBox.selected = checkStatus[119]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 9{
            cell.quanTextField.tag = 120
            cell.quanTextField.text = textfieldContents[120]
            cell.checkBox.tag = 120
            cell.checkBox.selected = checkStatus[120]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 10{
            cell.quanTextField.tag = 121
            cell.quanTextField.text = textfieldContents[121]
            cell.checkBox.tag = 121
            cell.checkBox.selected = checkStatus[121]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 11{
            cell.quanTextField.tag = 122
            cell.quanTextField.text = textfieldContents[122]
            cell.checkBox.tag = 122
            cell.checkBox.selected = checkStatus[122]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 12{
            cell.quanTextField.tag = 123
            cell.quanTextField.text = textfieldContents[123]
            cell.checkBox.tag = 123
            cell.checkBox.selected = checkStatus[123]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 13{
            cell.quanTextField.tag = 124
            cell.quanTextField.text = textfieldContents[124]
            cell.checkBox.tag = 124
            cell.checkBox.selected = checkStatus[124]
            
        }
        
        if indexPath.section == 13 && indexPath.row == 14{
            cell.quanTextField.tag = 125
            cell.quanTextField.text = textfieldContents[125]
            cell.checkBox.tag = 125
            cell.checkBox.selected = checkStatus[125]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 0{
            cell.quanTextField.tag = 126
            cell.quanTextField.text = textfieldContents[126]
            cell.checkBox.tag = 126
            cell.checkBox.selected = checkStatus[126]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 1{
            cell.quanTextField.tag = 127
            cell.quanTextField.text = textfieldContents[127]
            cell.checkBox.tag = 127
            cell.checkBox.selected = checkStatus[127]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 2{
            cell.quanTextField.tag = 128
            cell.quanTextField.text = textfieldContents[128]
            cell.checkBox.tag = 128
            cell.checkBox.selected = checkStatus[128]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 3{
            cell.quanTextField.tag = 129
            cell.quanTextField.text = textfieldContents[129]
            cell.checkBox.tag = 129
            cell.checkBox.selected = checkStatus[129]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 4{
            cell.quanTextField.tag = 130
            cell.quanTextField.text = textfieldContents[130]
            cell.checkBox.tag = 130
            cell.checkBox.selected = checkStatus[130]
            
        }
        
        if indexPath.section == 14 && indexPath.row == 5{
            cell.quanTextField.tag = 131
            cell.quanTextField.text = textfieldContents[131]
            cell.checkBox.tag = 131
            cell.checkBox.selected = checkStatus[131]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 0{
            cell.quanTextField.tag = 132
            cell.quanTextField.text = textfieldContents[132]
            cell.checkBox.tag = 132
            cell.checkBox.selected = checkStatus[132]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 1{
            cell.quanTextField.tag = 133
            cell.quanTextField.text = textfieldContents[133]
            cell.checkBox.tag = 133
            cell.checkBox.selected = checkStatus[133]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 2{
            cell.quanTextField.tag = 134
            cell.quanTextField.text = textfieldContents[134]
            cell.checkBox.tag = 134
            cell.checkBox.selected = checkStatus[134]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 3{
            cell.quanTextField.tag = 135
            cell.quanTextField.text = textfieldContents[135]
            cell.checkBox.tag = 135
            cell.checkBox.selected = checkStatus[135]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 4{
            cell.quanTextField.tag = 136
            cell.quanTextField.text = textfieldContents[136]
            cell.checkBox.tag = 136
            cell.checkBox.selected = checkStatus[136]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 5{
            cell.quanTextField.tag = 137
            cell.quanTextField.text = textfieldContents[137]
            cell.checkBox.tag = 137
            cell.checkBox.selected = checkStatus[137]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 6{
            cell.quanTextField.tag = 138
            cell.quanTextField.text = textfieldContents[138]
            cell.checkBox.tag = 138
            cell.checkBox.selected = checkStatus[138]
            
        }
        
        if indexPath.section == 15 && indexPath.row == 7{
            cell.quanTextField.tag = 139
            cell.quanTextField.text = textfieldContents[139]
            cell.checkBox.tag = 139
            cell.checkBox.selected = checkStatus[139]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 0{
            cell.quanTextField.tag = 140
            cell.quanTextField.text = textfieldContents[140]
            cell.checkBox.tag = 140
            cell.checkBox.selected = checkStatus[140]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 1{
            cell.quanTextField.tag = 141
            cell.quanTextField.text = textfieldContents[141]
            cell.checkBox.tag = 141
            cell.checkBox.selected = checkStatus[141]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 2{
            cell.quanTextField.tag = 142
            cell.quanTextField.text = textfieldContents[142]
            cell.checkBox.tag = 142
            cell.checkBox.selected = checkStatus[142]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 3{
            cell.quanTextField.tag = 143
            cell.quanTextField.text = textfieldContents[143]
            cell.checkBox.tag = 143
            cell.checkBox.selected = checkStatus[143]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 4{
            cell.quanTextField.tag = 144
            cell.quanTextField.text = textfieldContents[144]
            cell.checkBox.tag = 144
            cell.checkBox.selected = checkStatus[144]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 5{
            cell.quanTextField.tag = 145
            cell.quanTextField.text = textfieldContents[145]
            cell.checkBox.tag = 145
            cell.checkBox.selected = checkStatus[145]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 6{
            cell.quanTextField.tag = 146
            cell.quanTextField.text = textfieldContents[146]
            cell.checkBox.tag = 146
            cell.checkBox.selected = checkStatus[146]
            
        }
        
        if indexPath.section == 16 && indexPath.row == 7{
            cell.quanTextField.tag = 147
            cell.quanTextField.text = textfieldContents[147]
            cell.checkBox.tag = 147
            cell.checkBox.selected = checkStatus[147]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 0{
            cell.quanTextField.tag = 148
            cell.quanTextField.text = textfieldContents[148]
            cell.checkBox.tag = 148
            cell.checkBox.selected = checkStatus[148]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 1{
            cell.quanTextField.tag = 149
            cell.quanTextField.text = textfieldContents[149]
            cell.checkBox.tag = 149
            cell.checkBox.selected = checkStatus[149]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 2{
            cell.quanTextField.tag = 150
            cell.quanTextField.text = textfieldContents[150]
            cell.checkBox.tag = 150
            cell.checkBox.selected = checkStatus[150]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 3{
            cell.quanTextField.tag = 151
            cell.quanTextField.text = textfieldContents[151]
            cell.checkBox.tag = 151
            cell.checkBox.selected = checkStatus[151]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 4{
            cell.quanTextField.tag = 152
            cell.quanTextField.text = textfieldContents[152]
            cell.checkBox.tag = 152
            cell.checkBox.selected = checkStatus[152]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 5{
            cell.quanTextField.tag = 153
            cell.quanTextField.text = textfieldContents[153]
            cell.checkBox.tag = 153
            cell.checkBox.selected = checkStatus[153]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 6{
            cell.quanTextField.tag = 154
            cell.quanTextField.text = textfieldContents[154]
            cell.checkBox.tag = 154
            cell.checkBox.selected = checkStatus[154]
            
        }
        
        if indexPath.section == 17 && indexPath.row == 7{
            cell.quanTextField.tag = 155
            cell.quanTextField.text = textfieldContents[155]
            cell.checkBox.tag = 155
            cell.checkBox.selected = checkStatus[155]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 0{
            cell.quanTextField.tag = 156
            cell.quanTextField.text = textfieldContents[156]
            cell.checkBox.tag = 156
            cell.checkBox.selected = checkStatus[156]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 1{
            cell.quanTextField.tag = 157
            cell.quanTextField.text = textfieldContents[157]
            cell.checkBox.tag = 157
            cell.checkBox.selected = checkStatus[157]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 2{
            cell.quanTextField.tag = 158
            cell.quanTextField.text = textfieldContents[158]
            cell.checkBox.tag = 158
            cell.checkBox.selected = checkStatus[158]
            
        }
        
        if indexPath.section == 18 && indexPath.row == 3{
            cell.quanTextField.tag = 159
            cell.quanTextField.text = textfieldContents[159]
            cell.checkBox.tag = 159
            cell.checkBox.selected = checkStatus[159]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 0{
            cell.quanTextField.tag = 160
            cell.quanTextField.text = textfieldContents[160]
            cell.checkBox.tag = 160
            cell.checkBox.selected = checkStatus[160]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 1{
            cell.quanTextField.tag = 161
            cell.quanTextField.text = textfieldContents[161]
            cell.checkBox.tag = 161
            cell.checkBox.selected = checkStatus[161]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 2{
            cell.quanTextField.tag = 162
            cell.quanTextField.text = textfieldContents[162]
            cell.checkBox.tag = 162
            cell.checkBox.selected = checkStatus[162]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 3{
            cell.quanTextField.tag = 163
            cell.quanTextField.text = textfieldContents[163]
            cell.checkBox.tag = 163
            cell.checkBox.selected = checkStatus[163]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 4{
            cell.quanTextField.tag = 164
            cell.quanTextField.text = textfieldContents[164]
            cell.checkBox.tag = 164
            cell.checkBox.selected = checkStatus[164]
            
        }
        
        if indexPath.section == 19 && indexPath.row == 5{
            cell.quanTextField.tag = 165
            cell.quanTextField.text = textfieldContents[165]
            cell.checkBox.tag = 165
            cell.checkBox.selected = checkStatus[165]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 0{
            cell.quanTextField.tag = 166
            cell.quanTextField.text = textfieldContents[166]
            cell.checkBox.tag = 166
            cell.checkBox.selected = checkStatus[166]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 1{
            cell.quanTextField.tag = 167
            cell.quanTextField.text = textfieldContents[167]
            cell.checkBox.tag = 167
            cell.checkBox.selected = checkStatus[167]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 2{
            cell.quanTextField.tag = 168
            cell.quanTextField.text = textfieldContents[168]
            cell.checkBox.tag = 168
            cell.checkBox.selected = checkStatus[168]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 3{
            cell.quanTextField.tag = 169
            cell.quanTextField.text = textfieldContents[169]
            cell.checkBox.tag = 169
            cell.checkBox.selected = checkStatus[169]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 4{
            cell.quanTextField.tag = 170
            cell.quanTextField.text = textfieldContents[170]
            cell.checkBox.tag = 170
            cell.checkBox.selected = checkStatus[170]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 5{
            cell.quanTextField.tag = 171
            cell.quanTextField.text = textfieldContents[171]
            cell.checkBox.tag = 171
            cell.checkBox.selected = checkStatus[171]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 6{
            cell.quanTextField.tag = 172
            cell.quanTextField.text = textfieldContents[172]
            cell.checkBox.tag = 172
            cell.checkBox.selected = checkStatus[172]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 7{
            cell.quanTextField.tag = 173
            cell.quanTextField.text = textfieldContents[173]
            cell.checkBox.tag = 173
            cell.checkBox.selected = checkStatus[173]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 8{
            cell.quanTextField.tag = 174
            cell.quanTextField.text = textfieldContents[174]
            cell.checkBox.tag = 174
            cell.checkBox.selected = checkStatus[174]
            
        }
        
        if indexPath.section == 20 && indexPath.row == 9{
            cell.quanTextField.tag = 175
            cell.quanTextField.text = textfieldContents[175]
            cell.checkBox.tag = 175
            cell.checkBox.selected = checkStatus[175]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 0{
            cell.quanTextField.tag = 176
            cell.quanTextField.text = textfieldContents[176]
            cell.checkBox.tag = 176
            cell.checkBox.selected = checkStatus[176]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 1{
            cell.quanTextField.tag = 177
            cell.quanTextField.text = textfieldContents[177]
            cell.checkBox.tag = 177
            cell.checkBox.selected = checkStatus[177]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 2{
            cell.quanTextField.tag = 178
            cell.quanTextField.text = textfieldContents[178]
            cell.checkBox.tag = 178
            cell.checkBox.selected = checkStatus[178]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 3{
            cell.quanTextField.tag = 179
            cell.quanTextField.text = textfieldContents[179]
            cell.checkBox.tag = 179
            cell.checkBox.selected = checkStatus[179]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 4{
            cell.quanTextField.tag = 180
            cell.quanTextField.text = textfieldContents[180]
            cell.checkBox.tag = 180
            cell.checkBox.selected = checkStatus[180]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 5{
            cell.quanTextField.tag = 181
            cell.quanTextField.text = textfieldContents[181]
            cell.checkBox.tag = 181
            cell.checkBox.selected = checkStatus[181]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 6{
            cell.quanTextField.tag = 182
            cell.quanTextField.text = textfieldContents[182]
            cell.checkBox.tag = 182
            cell.checkBox.selected = checkStatus[182]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 7{
            cell.quanTextField.tag = 183
            cell.quanTextField.text = textfieldContents[183]
            cell.checkBox.tag = 183
            cell.checkBox.selected = checkStatus[183]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 8{
            cell.quanTextField.tag = 184
            cell.quanTextField.text = textfieldContents[184]
            cell.checkBox.tag = 184
            cell.checkBox.selected = checkStatus[184]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 9{
            cell.quanTextField.tag = 185
            cell.quanTextField.text = textfieldContents[185]
            cell.checkBox.tag = 185
            cell.checkBox.selected = checkStatus[185]
            
        }
        
        if indexPath.section == 21 && indexPath.row == 10{
            cell.quanTextField.tag = 186
            cell.quanTextField.text = textfieldContents[186]
            cell.checkBox.tag = 186
            cell.checkBox.selected = checkStatus[186]
            
        }

        if indexPath.section == 22 && indexPath.row == 0{
            cell.quanTextField.tag = 187
            cell.quanTextField.text = textfieldContents[187]
            cell.checkBox.tag = 187
            cell.checkBox.selected = checkStatus[187]
            
        }
        
        
        if indexPath.section == 22 && indexPath.row == 1{
            cell.quanTextField.tag = 188
            cell.quanTextField.text = textfieldContents[188]
            cell.checkBox.tag = 188
            cell.checkBox.selected = checkStatus[188]
            
        }
        
        if indexPath.section == 22 && indexPath.row == 2{
            cell.quanTextField.tag = 189
            cell.quanTextField.text = textfieldContents[189]
            cell.checkBox.tag = 189
            cell.checkBox.selected = checkStatus[189]
            
        }
        
        
        if indexPath.section == 22 && indexPath.row == 3{
            cell.quanTextField.tag = 190
            cell.quanTextField.text = textfieldContents[190]
            cell.checkBox.tag = 190
            cell.checkBox.selected = checkStatus[190]
            
        }
        
        if indexPath.section == 22 && indexPath.row == 4{
            cell.quanTextField.tag = 191
            cell.quanTextField.text = textfieldContents[191]
            cell.checkBox.tag = 191
            cell.checkBox.selected = checkStatus[191]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 0{
            cell.quanTextField.tag = 192
            cell.quanTextField.text = textfieldContents[192]
            cell.checkBox.tag = 192
            cell.checkBox.selected = checkStatus[192]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 1{
            cell.quanTextField.tag = 193
            cell.quanTextField.text = textfieldContents[193]
            cell.checkBox.tag = 193
            cell.checkBox.selected = checkStatus[193]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 2{
            cell.quanTextField.tag = 194
            cell.quanTextField.text = textfieldContents[194]
            cell.checkBox.tag = 194
            cell.checkBox.selected = checkStatus[194]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 3{
            cell.quanTextField.tag = 195
            cell.quanTextField.text = textfieldContents[195]
            cell.checkBox.tag = 195
            cell.checkBox.selected = checkStatus[195]
            
        }
        
        
        if indexPath.section == 23 && indexPath.row == 4{
            cell.quanTextField.tag = 196
            cell.quanTextField.text = textfieldContents[196]
            cell.checkBox.tag = 196
            cell.checkBox.selected = checkStatus[196]
            
        }
        
        
        if indexPath.section == 23 && indexPath.row == 5{
            cell.quanTextField.tag = 197
            cell.quanTextField.text = textfieldContents[197]
            cell.checkBox.tag = 197
            cell.checkBox.selected = checkStatus[197]
            
        }
        
        
        if indexPath.section == 23 && indexPath.row == 6{
            cell.quanTextField.tag = 198
            cell.quanTextField.text = textfieldContents[198]
            cell.checkBox.tag = 198
            cell.checkBox.selected = checkStatus[198]
            
        }
        
        
        if indexPath.section == 23 && indexPath.row == 7{
            cell.quanTextField.tag = 199
            cell.quanTextField.text = textfieldContents[199]
            cell.checkBox.tag = 199
            cell.checkBox.selected = checkStatus[199]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 8{
            cell.quanTextField.tag = 200
            cell.quanTextField.text = textfieldContents[200]
            cell.checkBox.tag = 200
            cell.checkBox.selected = checkStatus[200]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 9{
            cell.quanTextField.tag = 201
            cell.quanTextField.text = textfieldContents[201]
            cell.checkBox.tag = 201
            cell.checkBox.selected = checkStatus[201]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 10{
            cell.quanTextField.tag = 202
            cell.quanTextField.text = textfieldContents[202]
            cell.checkBox.tag = 202
            cell.checkBox.selected = checkStatus[202]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 11{
            cell.quanTextField.tag = 203
            cell.quanTextField.text = textfieldContents[203]
            cell.checkBox.tag = 203
            cell.checkBox.selected = checkStatus[203]
            
        }
        
        if indexPath.section == 23 && indexPath.row == 12{
            cell.quanTextField.tag = 204
            cell.quanTextField.text = textfieldContents[204]
            cell.checkBox.tag = 204
            cell.checkBox.selected = checkStatus[204]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 0{
            cell.quanTextField.tag = 205
            cell.quanTextField.text = textfieldContents[205]
            cell.checkBox.tag = 205
            cell.checkBox.selected = checkStatus[205]
            
        }
      
        if indexPath.section == 24 && indexPath.row == 1{
            cell.quanTextField.tag = 206
            cell.quanTextField.text = textfieldContents[206]
            cell.checkBox.tag = 206
            cell.checkBox.selected = checkStatus[206]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 2{
            cell.quanTextField.tag = 207
            cell.quanTextField.text = textfieldContents[207]
            cell.checkBox.tag = 207
            cell.checkBox.selected = checkStatus[207]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 3{
            cell.quanTextField.tag = 208
            cell.quanTextField.text = textfieldContents[208]
            cell.checkBox.tag = 208
            cell.checkBox.selected = checkStatus[208]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 4{
            cell.quanTextField.tag = 209
            cell.quanTextField.text = textfieldContents[209]
            cell.checkBox.tag = 209
            cell.checkBox.selected = checkStatus[209]
            
        }
        
        
        if indexPath.section == 24 && indexPath.row == 5{
            cell.quanTextField.tag = 210
            cell.quanTextField.text = textfieldContents[210]
            cell.checkBox.tag = 210
            cell.checkBox.selected = checkStatus[210]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 6{
            cell.quanTextField.tag = 211
            cell.quanTextField.text = textfieldContents[211]
            cell.checkBox.tag = 211
            cell.checkBox.selected = checkStatus[211]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 7{
            cell.quanTextField.tag = 212
            cell.quanTextField.text = textfieldContents[212]
            cell.checkBox.tag = 212
            cell.checkBox.selected = checkStatus[212]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 8{
            cell.quanTextField.tag = 213
            cell.quanTextField.text = textfieldContents[213]
            cell.checkBox.tag = 213
            cell.checkBox.selected = checkStatus[213]
            
        }
        
        
        if indexPath.section == 24 && indexPath.row == 9{
            cell.quanTextField.tag = 214
            cell.quanTextField.text = textfieldContents[214]
            cell.checkBox.tag = 214
            cell.checkBox.selected = checkStatus[214]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 10{
            cell.quanTextField.tag = 215
            cell.quanTextField.text = textfieldContents[215]
            cell.checkBox.tag = 215
            cell.checkBox.selected = checkStatus[215]
            
        }
        
        
        if indexPath.section == 24 && indexPath.row == 11{
            cell.quanTextField.tag = 216
            cell.quanTextField.text = textfieldContents[216]
            cell.checkBox.tag = 216
            cell.checkBox.selected = checkStatus[216]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 12{
            cell.quanTextField.tag = 217
            cell.quanTextField.text = textfieldContents[217]
            cell.checkBox.tag = 217
            cell.checkBox.selected = checkStatus[217]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 13{
            cell.quanTextField.tag = 218
            cell.quanTextField.text = textfieldContents[218]
            cell.checkBox.tag = 218
            cell.checkBox.selected = checkStatus[218]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 14{
            cell.quanTextField.tag = 219
            cell.quanTextField.text = textfieldContents[219]
            cell.checkBox.tag = 219
            cell.checkBox.selected = checkStatus[219]
            
        }
        
        
        if indexPath.section == 24 && indexPath.row == 15{
            cell.quanTextField.tag = 220
            cell.quanTextField.text = textfieldContents[220]
            cell.checkBox.tag = 220
            cell.checkBox.selected = checkStatus[220]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 16{
            cell.quanTextField.tag = 221
            cell.quanTextField.text = textfieldContents[221]
            cell.checkBox.tag = 221
            cell.checkBox.selected = checkStatus[221]
            
        }
        
        if indexPath.section == 24 && indexPath.row == 17{
            cell.quanTextField.tag = 222
            cell.quanTextField.text = textfieldContents[222]
            cell.checkBox.tag = 222
            cell.checkBox.selected = checkStatus[222]
            
        }
        
        
        if indexPath.section == 24 && indexPath.row == 18{
            cell.quanTextField.tag = 223
            cell.quanTextField.text = textfieldContents[223]
            cell.checkBox.tag = 223
            cell.checkBox.selected = checkStatus[223]
            
        }
        
        
        if indexPath.section == 25 && indexPath.row == 0{
            cell.quanTextField.tag = 224
            cell.quanTextField.text = textfieldContents[224]
            cell.checkBox.tag = 224
            cell.checkBox.selected = checkStatus[224]
            
        }
        
        if indexPath.section == 25 && indexPath.row == 1{
            cell.quanTextField.tag = 225
            cell.quanTextField.text = textfieldContents[225]
            cell.checkBox.tag = 225
            cell.checkBox.selected = checkStatus[225]
            
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