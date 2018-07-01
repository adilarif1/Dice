//
//  ViewController.swift
//  Dice
//
//  Created by Adil Arif on 30/06/2018.
//  Copyright © 2018 Adil Arif. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    var randomIndex1:Int = 0
    var randomIndex2:Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updatDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: Any) {
        
        updatDiceImages()
      
    }
    
    func updatDiceImages(){
        

        randomIndex1 = Int(arc4random_uniform(5))
        randomIndex2 = Int(arc4random_uniform(5))
        
        //diceImageView1.image = UIImage(named: "dice\(randomIndex1)")
       
        diceImageView1.image = UIImage(named: diceArray[randomIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomIndex2])
        
    }
    
}

