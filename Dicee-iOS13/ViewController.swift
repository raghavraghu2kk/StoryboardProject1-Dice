//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var diceImage : [UIImage] = [UIImage(resource: .diceFive),UIImage(resource: .diceFour),UIImage(resource: .diceOne),UIImage(resource: .diceSix),UIImage(resource: .diceThree),UIImage(resource: .diceTwo)]

    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        diceImageView1.alpha = 0.5
        diceImageView2.alpha = 0.5
        diceImageView1.image = diceImage.randomElement()
        diceImageView2.image = diceImage.randomElement()
    }
    
    @IBAction func rollDice(_ sender: Any) {
        diceImageView1.image = diceImage.randomElement()
        diceImageView2.image = diceImage.randomElement()
    }
    

}

