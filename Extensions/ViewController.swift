//
//  ViewController.swift
//  Extensions
//
//  Created by Flatiron School on 6/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var unicornLevelLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let me = "me"
        print(me.whisper())
        print(me.pigLatin)
        let fullName = "Henry Dinhofer"
        let phoneNumber = 8675309
        //computed properties
        print("\(fullName.whisper())\n\(fullName.shout())\n\(fullName.pigLatin)")
        
        print(phoneNumber.half())
        print(phoneNumber.halved)
        print(phoneNumber.isDivisibleBy(8675309))
        print(phoneNumber.isDivisibleBy(3)) // false is correct
        
        var age = 24
        age.square()
        print (age)
        
        unicornLevelLabel.adjustsFontSizeToFitWidth = true
        unicornLevelLabel.text = fullName.unicornLevel
        
        
    }
}


