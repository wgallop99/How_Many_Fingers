//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Will Gallop on 11/10/14.
//  Copyright (c) 2014 Will Gallop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    
    @IBOutlet weak var guess: UITextField!
    
    @IBAction func guessButton(sender: AnyObject) {
        var numberOfFingers = arc4random() % 6
        
        println(numberOfFingers)
        
        var numberOfFingersString = String(numberOfFingers)
        
        if(numberOfFingersString == guess.text){
            message.text = "Way to go! You are right!"
        } else {
            message.text = "That was not right, try again! I was holding up \(numberOfFingers) fingers. Try Again."
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

