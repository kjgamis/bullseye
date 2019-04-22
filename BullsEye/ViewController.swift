//
//  ViewController.swift
//  BullsEye
//
//  Created by KJG on 2019-04-22.
//  Copyright © 2019 KJG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue:Int = 0

    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let roundedValue = slider.value.rounded()
//        value is float as a default and need Int() to change to from Float to Int dataType
        currentValue = Int(roundedValue)
    }
    
    @IBAction func showlert() {
        
        let message = "Slider Value: \(currentValue)"
        
//        this is the alert prompt
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
//        this is the action for when an alert prompt is shown
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        let action2 = UIAlertAction(title: "Next", style: .default, handler: nil)
        
//        tells the alert (controller) to add the button to itself
        alert.addAction(action)
        alert.addAction(action2)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
//        value is float as a default and need Int() to change to from Float to Int dataType
        currentValue = Int(roundedValue)
        
    }
 

}

