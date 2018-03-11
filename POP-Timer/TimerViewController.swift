//
//  ViewController.swift
//  TimerTT
//
//  Created by Valentina Henao Arango on 3/5/18.
//  Copyright © 2018 Valentina Henao Arango. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    @IBOutlet weak var timerIndicator: UIView!
    
    @IBOutlet weak var remainingTime: UILabel!
    
    @IBAction func startTimer(_ sender: UIButton) {
         self.remainingTime.text = "\(self.timerBrain.timerValue)"
        UIView.animate(withDuration: 0.5, animations: {
            self.timerIndicator.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        } , completion: { _ in
            UIView.animate(withDuration: 0.5, animations: {
                self.timerIndicator.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                self.remainingTime.text = "\(String(describing: self.delegate?.calculateNextValue(currentValue: self.timerBrain.timerValue)))"
            })
        })
    }
    
    var delegate : TimerDelegate?
    let timerBrain = TimerBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self.timerBrain
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

