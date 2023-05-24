//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    // Tu som si dotiahol prvu koncu, treba držať options, pod class a nad override
    
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // Tu to iste s druhou kockou, treba davat pozor na nazvy, ak uz raz nastavim nazov, treba zmenit cez refactor
    
   

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //viewDidLoad --> zmena ked sa nacita aplikacia, cize hned
        
        // Zmena vlastností,najskor KOHO chcem menit, potom CO chcem menit, a na zaver na aku hodnotu, obrazok zmeneny cez #imageLiteral()
        
        // Mohol by som to aj vymazať ale chcem tu mať poznámky k tomu
        
           
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //keď sa presúva na toto miesto --> automaticky ACTION,
        // zmena iba pri type z ANY na UIButton
        // IBOutlet idú z CODE --> DESIGN
        //IBAction DESIGN --> CODE
        
        
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        
        //diceImageView1.image = diceArray[Int.random(in: 0...5)]
        //diceImageView2.image = diceArray[Int.random(in: 0...5)]
        //Dá sa použit aj Int.random....budem to vela pouzivat ale viem pouzit aj nieco lepsie v tomto pripade,
        // randomElement mi nahodne vybera zo vsetkych elementov v tomto pripade z dice Array
        
        
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
        
     
     
        
        
        
        
    }
    
   
}

