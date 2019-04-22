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
    var targetValue:Int = 0

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let roundedValue = slider.value.rounded()
        print("Rounded Value: \(roundedValue)")
//        value is float as a default and need Int() to change to from Float to Int dataType
        currentValue = Int(roundedValue)
        startNewRound()
    }
    
    @IBAction func showlert() {
        
        let message = "Slider Value: \(currentValue)" +
        "\nTarget Value: \(targetValue)"
        
//        this is the alert prompt
        let alert = UIAlertController(title: "Hello World!", message: message, preferredStyle: .alert)
        
//        this is the action for when an alert prompt is shown
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
//        tells the alert (controller) to add the button to itself
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
//        after show alert, start new round
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
//        value is float as a default and need Int() to change to from Float to Int dataType
        currentValue = Int(roundedValue)
    }
    
    func startNewRound() {
//        random number between 1 to 100 (inclusive)
        targetValue = Int.random(in: 1...100)
//        move slider back to middle
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
//        targetLabel in UI will display the generated targetValue as a string
        targetLabel.text = String(targetValue)
    }
 

}

