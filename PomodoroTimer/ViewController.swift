//
//  ViewController.swift
//  PomodoroTimer
//
//  Created by Тимур Бакланов on 10.02.2020.
//  Copyright © 2020 Тимур Бакланов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var startTimerButton: UIButton!

    var timer = Timer()
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 255/255, green: 240/255, blue: 255/255, alpha: 1)
    }
    
    @IBAction func startTimer(_ sender: UIButton) {
        if timer.isValid {
            return
        } else {
             timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(setLabel), userInfo: nil, repeats: true)
            sender.isEnabled = false
        }
    }
    @IBAction func finishTimer(_ sender: UIButton) {
        count = 0
        timeLabel.text = "0"
        timer.invalidate()
        startTimerButton.isEnabled = true
    }
    
    @objc func setLabel() {
        count += 1
        timeLabel.text = String(count)
    }
}
