//
//  TimerBrain.swift
//  TimerTT
//
//  Created by Valentina Henao Arango on 3/5/18.
//  Copyright © 2018 Valentina Henao Arango. All rights reserved.
//

import Foundation

struct TimerBrain: TimerDelegate {
    let timerValue = 3
    
    func calculateNextValue( currentValue: Int) -> Int {
        return currentValue-1
    }
}


