//
//  MainVC.swift
//  BeatBox
//
//  Created by Neil Sood on 12/18/19.
//  Copyright © 2019 Neil Sood. All rights reserved.
//

import UIKit
import AVFoundation

class MainVC: UIViewController {
    
    // MARK: outlets
    @IBOutlet var buttonCollection: [UIButton]!
    
    // MARK: variables

    
    // MARK: overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector (tap))  //Tap function will call when user tap on button
        let longGesture = UILongPressGestureRecognizer(target: self, action: #selector(long))  //Long function will call when user long press on button.
        tapGesture.numberOfTapsRequired = 1
       
        for button in buttonCollection {
            button.addGestureRecognizer(tapGesture)
            button.addGestureRecognizer(longGesture)
        }
    }
    
    
    // MARK: actions
    @IBAction func buttonPressed(_ sender: UIButton) {
//        print(sender.tag)
    }
    
    
    // MARK: functions
    @objc func tap() {
         print("Single tap done")
    }

    @objc func long() {
         print("Long gesture recognized")
    }
}

