//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by soufiane elamiri on 3/14/19.
//  Copyright © 2019 soufiane elamiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    @IBOutlet weak var IBOutlet: UIImageView!
    var randomBallNumber : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //randomBallNumber = Int.random(in: 0 ... 4)
        //IBOutlet.image = UIImage.init(named: ballArray[randomBallNumber])
        runBallAsk()
        
    }
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        runBallAsk()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        runBallAsk()
    }
    
    func runBallAsk(){
        
        randomBallNumber = Int.random(in: 0 ... 4)
        IBOutlet.image = UIImage.init(named: ballArray[randomBallNumber])
        
    }
    

}

