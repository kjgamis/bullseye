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
    var score = 0
    var round = 0

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let roundedValue = slider.value.rounded()
        print("Rounded Value: \(roundedValue)")
//        value is float as a default and need Int() to change to from Float to Int dataType
        currentValue = Int(roundedValue)
        startNewGame()
        
//        slider thumb images
        let thumbImageNormal = #imageLiteral(resourceName: "SliderThumb-Normal")
        let thumbImageHighlighted = #imageLiteral(resourceName: "SliderThumb-Highlighted")
        
        slider.setThumbImage(thumbImageNormal, for: .normal)
        slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
    }
    
    @IBAction func showlert() {
        
        let difference = abs(targetValue-currentValue)
        //        more points if closer (difference is smaller)
        var points = 100 - difference
        score += points
        
        let title:String
        
        if difference == 0 {
            title = "Perfect!"
            points += 100
        } else if difference < 5 {
            title = "Very close!"
            if difference == 1{
                points += 50
            }
        } else if difference < 10 {
            title = "Still pretty good!"
        } else {
            title = "Not even close..."
        }
        
        let message = "You scored \(points) points"
        
        
//        this is the alert prompt
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
//        this is the action for when an alert prompt is shown
//        handler tells the alert what should happen  after the button is pressed - this is the alert dismissed event
//        handler is not executed right away. It is stored somewhere and is only executed when the AlertAction is tapped
        let action = UIAlertAction(title: "Awesome", style: .default, handler: {
            action in
            self.startNewRound()
        })
        
//        tells the alert (controller) to add the button to itself
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
//        value is float as a default and need Int() to change to from Float to Int dataType
        currentValue = Int(roundedValue)
    }
    
    func startNewRound() {
        round += 1
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
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
 
    @IBAction func startNewGame() {
        round = 0
        score = 0
        
        startNewRound()
    }
}

