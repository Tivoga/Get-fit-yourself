//
//  FirstViewController.swift
//  Get fit yourself
//
//  Created by Till von Gaudecker on 06.05.20.
//  Copyright © 2020 Till von Gaudecker. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var timer = Timer()
    var setCountdown = 5
    var pauseCountdown = 10
    
    @IBOutlet weak var goOrPauseLabel: UILabel!
    
    @IBOutlet weak var countDownLabel: UILabel!
    
    
    @IBAction func startButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDownMethod), userInfo: nil, repeats: true)
    }
    
    @objc func countDownMethod() {
        countDownLabel.text = "\(setCountdown)"
        setCountdown -= 1
        
        if setCountdown <= 0 {
            countDownLabel.text = "\(pauseCountdown)"
            pauseCountdown -= 1
        }
        else if pauseCountdown <= 0 {
            countDownLabel.text = "\(setCountdown)"
            setCountdown -= 1
        }
    }
        

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

