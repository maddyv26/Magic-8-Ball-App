//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Madelyne Voreh on 7/8/18.
//  Copyright © 2018 Madelyne Voreh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    
     @IBOutlet weak var ImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    
    func newBallImage(){
        randomBallNumber = Int(arc4random_uniform(5))
        ImageView.image = UIImage(named : ballArray[randomBallNumber]) // or UIImage(named : "ball\(randomNumber)")
        
    }
    
}

