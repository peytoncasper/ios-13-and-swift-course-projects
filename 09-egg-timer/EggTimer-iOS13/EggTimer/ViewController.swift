//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    let eggTimes = [
        "Soft": 5,
        "Medium": 7,
        "Hard": 12
    ]
    
    var totalSeconds = 0
    var secondsRemaining = 0
    var countTimer: Timer? = nil
    @IBOutlet weak var timerProgress: UIProgressView!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func hardnessSelector(_ sender: UIButton) {
        let hardness = sender.currentTitle!
        secondsRemaining = eggTimes[hardness]!
        totalSeconds = secondsRemaining
        
        if countTimer != nil {
            countTimer?.invalidate()
        }
        
        countTimer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (Timer) in
            self.timerProgress.progress = Float(self.secondsRemaining) / Float(self.totalSeconds)
            if self.secondsRemaining > 0 {
                self.secondsRemaining -= 1
            } else {
                self.titleLabel.text = "Done!"
                self.countTimer!.invalidate()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    self.titleLabel.text = "How do you like your eggs?"
                }
            }
        }

    }
    
}
