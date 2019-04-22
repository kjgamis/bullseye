//
//  ViewController.swift
//  BullsEye
//
//  Created by KJG on 2019-04-22.
//  Copyright © 2019 KJG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showHitMeAlert() {
//        print("Hello!")
        
//        this is the alert prompt
        let alert = UIAlertController(title: "Hello World!", message: "This is my first app", preferredStyle: .alert)
        
//        this is the action for when an alert prompt is shown
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        let action2 = UIAlertAction(title: "Next", style: .default, handler: nil)
        
//        tells the alert (controller) to add the button to itself
        alert.addAction(action)
        alert.addAction(action2)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func showKnockKnockAlert() {
        let alert = UIAlertController(title: "Knock Knock", message: "Who's there?", preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "Just ME", style: .destructive, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
 

}

